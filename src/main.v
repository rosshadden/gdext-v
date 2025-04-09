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
	name            string @[required]
	is_refcounted   bool   @[required]
	is_instantiable bool   @[required]
	inherits        string // @[required]
	api_type        string @[required]

	enums []struct {
		name        string          @[required]
		is_bitfield bool            @[required]
		values      []struct {
			name  string @[required]
			value f64    @[required]
		} @[required]
	} // @[required]


	methods []struct {
		name       string @[required]
		is_const   bool   @[required]
		is_vararg  bool   @[required]
		is_static  bool   @[required]
		is_virtual bool   @[required]
		hash       f64    @[required]

		return_value struct {
			type string @[required]
			meta string
		}

		arguments []struct {
			name          string @[required]
			type          string @[required]
			default_value string
			meta          string
		}

		hash_compatibility []f64
		is_required        bool
	} // @[required]


	properties []struct {
		type   string @[required]
		name   string @[required]
		setter string
		getter string @[required]
		index  f64
	} // @[required]


	signals []struct {
		name      string @[required]
		arguments []struct {
			name string @[required]
			type string @[required]
		}
	} // @[required]


	constants []struct {
		name  string @[required]
		value f64    @[required]
	} // @[required]

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
