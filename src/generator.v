module gdext

import json
import godot
import os
import strings

struct Generator {
mut:
	api godot.API @[required]
}

fn Generator.new(api_dump string) Generator {
	api := json.decode(godot.API, api_dump) or { panic('Failed to parse API dump JSON: ${err}') }

	return Generator{
		api: api
	}
}

fn (g &Generator) run() ! {
	g.gen_classes()!
}

fn (g &Generator) gen_classes() ! {
	for class in g.api.classes {
		mut f := os.create('src/gd/${class.name}.v')!
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
