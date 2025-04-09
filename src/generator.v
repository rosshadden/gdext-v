import json
import os
import godot

struct Generator {
mut:
	api      godot.API @[required]
	classes  map[string]godot.APIClass
	builtins map[string]godot.APIClass
	type_map map[string]string
}

fn Generator.new(api_dump_file string) Generator {
	// parse file
	api_json := os.read_file(api_dump_file) or { panic('Failed to read API dump file: ${err}') }
	api := json.decode(godot.API, api_json) or { panic('Failed to parse API dump JSON: ${err}') }

	mut g := Generator{
		api:      api
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

	// fill convenience data structures
	for class in g.api.classes {
		g.classes[class.name] = class
	}

	return g
}

fn (g &Generator) bindings() {
}
