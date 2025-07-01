module generator

// TODO: make `TODO` et al look nice

// TODO: make V support `///` for docstrings
// TODO: fix V stripping `#.*` from comments
// TODO: fix V not working with the first item in a list

@[params]
struct DocstringCfg {
	// Add text before valid docstrings.
	before string
	// Add text after valid docstrings.
	after string
	// Add text before each line.
	prefix string
	// Add text after each line.
	suffix string
}

// Creates a doc comment string from the given comments.
// Converts some bbcode to markdown.
fn docstring(comments string, cfg DocstringCfg) string {
	if comments == '' {
		return ''
	}
	mut lines := []string{}
	for comment in comments.split_into_lines() {
		line := comment
			.replace('[codeblock]', '```gdscript')
			.replace('[/codeblock]', '```')
			.replace('[code]', '`')
			.replace('[/code]', '`')
		lines << '${cfg.prefix}// ${line}${cfg.suffix}'
	}
	return cfg.before + lines.join('\n') + cfg.after
}
