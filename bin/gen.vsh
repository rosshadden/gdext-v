#!/usr/bin/env -S v run

module main

import os
import src.generator { Generator }

fn main() {
	println('Generating V bindings...')
	mut api_dump_file := 'data/extension_api.json'

	if os.args.len > 1 {
		api_dump_file = os.args[1]
	}

	api_dump := os.read_file(api_dump_file) or { panic('Failed to read API dump file: ${err}') }

	gen := Generator.new(api_dump)
	gen.run() or { panic('Failed to generate V bindings: ${err}') }

	println('V bindings generated successfully.')
}
