module main

import os
import json

struct Generator {
	api_dump string @[required]
mut:
	classes  map[string]GodotAPIClass
	builtins map[string]GodotAPIClass
	type_map map[string]string
}

fn Generator.new(api_dump string) Generator {
	return Generator{
		api_dump: api_dump
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

struct GodotAPIClass {
	name            string
	is_refcounted   bool
	is_instantiable bool
	inherits        string
	api_type        string
	enums           []struct {
		name        string
		is_bitfield bool
		values      []struct {
			name  string
			value f64
		}
	}
	methods         []struct {
		name               string
		is_const           bool
		is_vararg          bool
		is_static          bool
		is_virtual         bool
		hash               f64
		return_value       struct {
			type string
			meta string
		}
		arguments          []struct {
			name          string
			type          string
			default_value string
			meta          string
		}
		hash_compatibility []f64
		is_required        bool
	}
	properties      []struct {
		type   string
		name   string
		setter string
		getter string
		index  f64
	}
	signals         []struct {
		name      string
		arguments []struct {
			name string
			type string
		}
	}
	constants       []struct {
		name  string
		value f64
	}
}

struct GodotApi {
mut:
	classes []GodotAPIClass
}

fn (mut g Generator) parse_api() {
	api_json := os.read_file(g.api_dump) or { panic('Failed to read API dump file: ${err}') }
	api := json.decode(GodotApi, api_json) or { panic('Failed to parse API dump JSON: ${err}') }

	for class in api.classes {
		g.classes[class.name] = class
	}

	dump(g.classes)
}

fn (g &Generator) generate_bindings() {
}

fn main() {
	println('\nGenerating V bindings...')
	mut api_dump := 'extension_api.json'

	if os.args.len > 1 {
		api_dump = os.args[1]
	}

	mut generator := Generator.new(api_dump)
	generator.parse_api()
	generator.generate_bindings()

	// println("V bindings generated successfully.")
}
