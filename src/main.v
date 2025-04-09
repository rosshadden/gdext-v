import os

fn main() {
	println('\nGenerating V bindings...')
	mut api_dump_file := 'extension_api.json'

	if os.args.len > 1 {
		api_dump_file = os.args[1]
	}

	mut generator := Generator.new()
	generator.parse_api(api_dump_file)
	generator.generate_bindings()

	// println("V bindings generated successfully.")
}
