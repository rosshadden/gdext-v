#!/usr/bin/env -S v run

module main

import os
import generator { Generator }

fn main() {
	println('Generating V bindings...')
	execute('rm */_*.v')

	mut api_dump_file := 'data/extension_api.json'

	if os.args.len > 1 {
		api_dump_file = os.args[1]
	}

	api_dump := read_file(api_dump_file) or { panic('Failed to read API dump file: ${err}') }

	mut gen := Generator.new(api_dump)
	gen.run() or { panic('Failed to generate V bindings: ${err}') }

	println('V bindings generated successfully.')
}
