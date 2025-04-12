module generator

import json
import os
import strings

pub struct Generator {
mut:
	api API @[required]
}

pub fn Generator.new(api_dump string) Generator {
	api := json.decode(API, api_dump) or { panic('Failed to parse API dump JSON: ${err}') }

	return Generator{api}
}

pub fn (g &Generator) run() ! {
	g.gen_builtin_classes()!
	g.gen_classes()!
}

fn (g &Generator) gen_builtin_classes() ! {
	for class in g.api.builtin_classes {
		if class.name.is_lower() {
			continue
		}

		mut buf := strings.new_builder(1024)

		buf.writeln('module gd')
		buf.writeln('')
		buf.writeln('pub struct ${class.name} {')
		buf.writeln('}')

		for constructor in class.constructors {
			suffix := if constructor.index == 0 { '' } else { '${constructor.index}' }
			buf.writeln('')

			buf.write_string('pub fn ${class.name}.new${suffix}(')
			for a, arg in constructor.arguments {
				if a != 0 {
					buf.write_string(', ')
				}
				buf.write_string('${arg.name} &${arg.type}')
			}
			buf.writeln(') ${class.name} {')
			buf.writeln('\tmut inst := ${class.name}{}')
			buf.writeln('\tconstructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_${class.name.to_lower()}, ${constructor.index})')
			if constructor.arguments.len > 0 {
				buf.writeln('\tmut args := unsafe { [${constructor.arguments.len}]voidptr{} }')
				for a, arg in constructor.arguments {
					buf.writeln('\targs[${a}] = ${arg.name}')
				}
				buf.writeln('\tconstructor(voidptr(&inst), voidptr(&args[0]))')
			} else {
				buf.writeln('\tconstructor(voidptr(&inst), unsafe {nil})')
			}
			buf.writeln('\treturn inst')
			buf.writeln('}')
		}

		if class.has_destructor {
			buf.writeln('')
			buf.writeln('pub fn (s &${class.name}) deinit() {')
			buf.writeln('\tdestructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_${class.name.to_lower()})')
			buf.writeln('\tdestructor(voidptr(s))')
			buf.writeln('}')
		}

		for method in class.methods {
			has_return := method.return_type != ''
			return_type := convert_type(method.return_type)
			ptr := match true {
				method.is_static { 'unsafe{nil}' }
				// class.name in object_names { 's.ptr' }
				else { 'voidptr(s)' }
			}

			buf.writeln('')
			// fn def
			if method.is_static {
				buf.write_string('pub fn ${class.name}.${method.name}(')
			} else {
				buf.write_string('pub fn (s &${class.name}) ${method.name}(')
			}
			// args
			for a, arg in method.arguments {
				if a != 0 {
					buf.write_string(', ')
				}
				buf.write_string('${arg.name} ${convert_type(arg.type)}')
			}
			// return signature
			if has_return {
				buf.writeln(') ${return_type} {')
			} else {
				buf.writeln(') {')
			}
			// body
			if has_return {
				// result
				match true {
					return_type in numbers {
						buf.writeln('\tmut result := ${return_type}(0)')
					}
					return_type == 'bool' {
						buf.writeln('\tmut result := false')
					}
					return_type == 'voidptr' {
						buf.writeln('\tmut result := unsafe{nil}')
					}
					else {
						buf.writeln('\tmut result := ${return_type}{}')
					}
				}
				buf.writeln('\tfnname := StringName.new("${method.name}")')
				buf.writeln('\tf := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_${class.name.to_lower()}, voidptr(&fnname), ${method.hash})')

				if method.arguments.len > 0 {
					buf.writeln('\tmut args := unsafe { [${method.arguments.len}]voidptr{} }')
					for i, a in method.arguments {
						mut name := convert_name(a.name)
						buf.writeln('\targs[${i}] = voidptr(&${name})')
					}

					buf.writeln('\tf(${ptr}, voidptr(&args[0]), voidptr(&result), ${method.arguments.len})')
				} else {
					buf.writeln('\tf(${ptr}, unsafe{nil}, voidptr(&result), ${method.arguments.len})')
				}
				buf.writeln('\tfnname.deinit()')
				buf.writeln('\treturn result')
			} else {
				buf.writeln('\tfnname := StringName.new("${method.name}")')
				buf.writeln('\tf := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_${class.name.to_lower()}, voidptr(&fnname), ${method.hash})')
				buf.writeln('\tf(${ptr}, unsafe{nil}, unsafe{nil}, ${method.arguments.len})')
				buf.writeln('\tfnname.deinit()')
			}
			// end
			buf.writeln('}')
		}

		mut f := os.create('src/_${class.name}.v')!
		defer { f.close() }
		f.write(buf)!
	}
}

fn (g &Generator) gen_classes() ! {
	for class in g.api.classes {
		mut buf := strings.new_builder(1024)

		buf.writeln('module gd')
		buf.writeln('')
		buf.writeln('pub struct ${class.name} {')
		if class.inherits.len > 0 {
			buf.writeln('\t${class.inherits}')
		}
		buf.writeln('}')

		mut f := os.create('src/_${class.name}.v')!
		defer { f.close() }
		f.write(buf)!
	}
}
