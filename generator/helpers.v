module generator

// TODO: fix V stripping `#.*` from comments
// TODO: fix V not working with the first item in a list

fn (g &Generator) build_docstring(comments string) string {
	mut lines := []string{}
	for comment in comments.split_into_lines() {
		line := comment
			.replace('[codeblock]', '```gdscript')
			.replace('[/codeblock]', '```')
			.replace('[code]', '`')
			.replace('[/code]', '`')
		lines << '// ${line}'
	}
	return lines.join('\n')
}
