module generator

fn (g &Generator) build_docstring(comment string) string {
	mut lines := []string{}
	for line in comment.split_into_lines() {
		lines << '// ${line}'
	}
	return lines.join('\n')
}
