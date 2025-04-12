module generator

const numbers = ['f32', 'f64', 'i8', 'u8', 'i16', 'u16', 'i32', 'u32', 'i64', 'u64', 'int']

const keywords = [
	'as',
	'asm',
	'assert',
	'atomic',
	'bool',
	'break',
	'const',
	'continue',
	'char',
	'defer',
	'else',
	'enum',
	'false',
	'fn',
	'for',
	'go',
	'goto',
	'if',
	'import',
	'in',
	'interface',
	'is',
	'isreftype',
	'lock',
	'match',
	'module',
	'mut',
	'none',
	'or',
	'pub',
	'return',
	'rlock',
	'select',
	'shared',
	'sizeof',
	'spawn',
	'static',
	'string',
	'struct',
	'true',
	'type',
	'typeof',
	'union',
	'unsafe',
	'volatile',
	'__global',
	'__offsetof',
	'args',
]

const type_map = {
	'double':   'f64'
	'float':    'f64'
	'int16':    'i16'
	'int16_t':  'i16'
	'int32':    'i32'
	'int32_t':  'i32'
	'int64':    'i64'
	'int64_t':  'i64'
	'int8':     'i8'
	'int8_t':   'i8'
	'real_t':   'f64'
	'uint16':   'u16'
	'uint16_t': 'u16'
	'uint32':   'u32'
	'uint32_t': 'u32'
	'uint64':   'u64'
	'uint64_t': 'u64'
	'uint8':    'u8'
	'uint8_t':  'u8'
	'void*':    'voidptr'
}

fn convert_name(name string) string {
	if name in keywords {
		return 'gd${name}'
	}
	return name
}

fn convert_type(name string) string {
	return type_map[name] or { name }
}
