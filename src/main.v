import os

fn main() {
	println('\nGenerating V bindings...')
	mut api_dump_file := 'data/extension_api.json'

	if os.args.len > 1 {
		api_dump_file = os.args[1]
	}

	api_dump := os.read_file(api_dump_file) or { panic('Failed to read API dump file: ${err}') }

	generator := Generator.new(api_dump)
	generator.bindings()

	// println("V bindings generated successfully.")
}
