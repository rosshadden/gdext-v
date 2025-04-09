import json
import godot

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

fn (g &Generator) bindings() {
}
