import json
import os
import godot

struct Generator {
mut:
	api      godot.API
	classes  map[string]godot.APIClass
	builtins map[string]godot.APIClass
	type_map map[string]string
}

fn Generator.new() Generator {
	return Generator{
		type_map: {
			'bool':       'bool'
			'int':        'int'
			'float':      'float'
			'String':     'string'
			'Array':      '[]GodotVariant'
			'Dictionary': 'map[string]GodotVariant'
			'Vector2':    'Vector2'
			'Vector3':    'Vector3'
			'Color':      'Color'
			'Variant':    'GodotVariant'
		}
	}
}

fn (mut g Generator) parse_api(api_dump_file string) {
	// parse file
	api_json := os.read_file(api_dump_file) or { panic('Failed to read API dump file: ${err}') }
	g.api = json.decode(godot.API, api_json) or { panic('Failed to parse API dump JSON: ${err}') }

	// fill convenience data structures
	for class in g.api.classes {
		g.classes[class.name] = class
	}
}

fn (g &Generator) generate_bindings() {
}
