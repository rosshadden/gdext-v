import json
import godot
import os

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

		f.writeln('module gd')!
		f.writeln('')!
		f.writeln('pub struct ${class.name} {}')!
	}
}
