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

		// struct
		buf.writeln('module gd')
		buf.writeln('')
		buf.writeln('pub struct ${class.name} {')
		buf.writeln('}')

		// constructors
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

		// destructor
		if class.has_destructor {
			buf.writeln('')
			buf.writeln('pub fn (s &${class.name}) deinit() {')
			buf.writeln('\tdestructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_${class.name.to_lower()})')
			buf.writeln('\tdestructor(voidptr(s))')
			buf.writeln('}')
		}

		// methods
		for method in class.methods {
			has_return := method.return_type != ''
			return_type := convert_type(method.return_type)
			ptr := match true {
				method.is_static { 'unsafe{nil}' }
				// class.name in object_names { 's.ptr' }
				else { 'voidptr(s)' }
			}

			// fn def
			buf.writeln('')
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
				buf.write_string('${convert_name(arg.name)} ${convert_type(arg.type)}')
			}

			// return signature
			if has_return {
				buf.writeln(') ${return_type} {')
			} else {
				buf.writeln(') {')
			}

			// body
			if has_return {
				buf.writeln('\tmut result := ${convert_return(return_type)}')
			}
			buf.writeln('\tfnname := StringName.new("${method.name}")')
			buf.writeln('\tf := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_${class.name.to_lower()}, voidptr(&fnname), ${method.hash})')

			if has_return {
				if method.arguments.len > 0 {
					buf.writeln('\tmut args := unsafe { [${method.arguments.len}]voidptr{} }')

					for a, arg in method.arguments {
						mut name := convert_name(arg.name)
						buf.writeln('\targs[${a}] = voidptr(&${name})')
					}

					buf.writeln('\tf(${ptr}, voidptr(&args[0]), voidptr(&result), ${method.arguments.len})')
				} else {
					buf.writeln('\tf(${ptr}, unsafe{nil}, voidptr(&result), ${method.arguments.len})')
				}
			} else {
				buf.writeln('\tf(${ptr}, unsafe{nil}, unsafe{nil}, ${method.arguments.len})')
			}

			// cleanup
			buf.writeln('\tfnname.deinit()')

			// return
			if has_return {
				buf.writeln('\treturn result')
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

		// struct
		buf.writeln('module gd')
		buf.writeln('')
		buf.writeln('pub struct ${class.name} {')
		if class.inherits != '' {
			buf.writeln('\t${class.inherits}')
		}
		buf.writeln('}')

		// methods
		for method in class.methods {
			has_return := method.return_value.type != ''
			return_type := convert_type(method.return_value.type)
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
				buf.write_string('${convert_name(arg.name)} ${convert_strings(convert_type(arg.type))}')
			}

			// return signature
			if has_return {
				buf.writeln(') ${convert_strings(return_type)} {')
			} else {
				buf.writeln(') {')
			}

			// body
			if has_return {
				buf.writeln('\tmut result := ${convert_return(return_type)}')
			}
			buf.writeln('\tclassname := StringName.new("${class.name}")')
			buf.writeln('\tfnname := StringName.new("${method.name}")')
			buf.writeln('\tmb := gdf.classdb_get_method_bind(&classname, &fnname, ${method.hash})')

			if method.arguments.len > 0 {
				buf.writeln('\tmut args := unsafe { [${method.arguments.len}]voidptr{} }')

				for a, arg in method.arguments {
					mut name := convert_name(arg.name)
					match true {
						arg.type in strings {
							buf.writeln('\targ_sn${a} := ${arg.type}.new(${name})')
							buf.writeln('\targsn${a} := unsafe{voidptr(&arg_sn${a})}')
						}
						// TODO: classdb
						// TODO: enums
						else {
							buf.writeln('\targs[${a}] = unsafe{voidptr(&${name})}')
						}
					}
				}
				if has_return {
					buf.writeln('\tgdf.object_method_bind_ptrcall(mb, ${ptr}, voidptr(&args[0]), voidptr(&result))')
				} else {
					buf.writeln('\tgdf.object_method_bind_ptrcall(mb, ${ptr}, voidptr(&args[0]), unsafe{nil})')
				}
			} else {
				if has_return {
					buf.writeln('\tgdf.object_method_bind_ptrcall(mb, ${ptr}, unsafe{nil}, voidptr(&result))')
				} else {
					buf.writeln('\tgdf.object_method_bind_ptrcall(mb, ${ptr}, unsafe{nil}, unsafe{nil})')
				}
			}

			// cleanup
			for a, arg in method.arguments {
				if arg.type in strings {
					buf.writeln('\targ_sn${a}.deinit()')
				}
			}
			buf.writeln('\tclassname.deinit()')
			buf.writeln('\tfnname.deinit()')

			// return
			if has_return {
				match true {
					method.return_value.type in strings {
						buf.writeln('\tresult_v := result.to_v()')
						buf.writeln('\tresult.deinit()')
						buf.writeln('\treturn result_v')
					}
					// TODO: enums
					else {
						buf.writeln('\treturn result')
					}
				}
			}

			// end
			buf.writeln('}')
		}

		mut f := os.create('src/_${class.name}.v')!
		defer { f.close() }
		f.write(buf)!
	}
}
