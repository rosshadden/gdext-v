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

		mut f := os.create('src/_${class.name}.v')!
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
			buf.writeln('\tdestructor(voidptr(c))')
			buf.writeln('}')
		}

		f.write(buf)!
	}
}

fn (g &Generator) gen_classes() ! {
	for class in g.api.classes {
		mut f := os.create('src/_${class.name}.v')!
		mut buf := strings.new_builder(1024)

		buf.writeln('module gd')
		buf.writeln('')
		buf.writeln('pub struct ${class.name} {')
		if class.inherits.len > 0 {
			buf.writeln('\t${class.inherits}')
		}
		buf.writeln('}')

		f.write(buf)!
	}
}
