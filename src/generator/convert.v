module generator

const strings = ['String', 'StringName']

const numbers = ['f32', 'f64', 'i8', 'u8', 'i16', 'u16', 'i32', 'u32', 'i64', 'u64', 'int']

const keywords = [
	'__global',
	'__offsetof',
	'args',
	'as',
	'asm',
	'assert',
	'atomic',
	'bool',
	'break',
	'char',
	'const',
	'continue',
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
	'map',
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
]

const genwords = [
	'classname',
	'result',
]

// convert name from C++ to V
fn convert_name(_name string) string {
	mut name := _name.to_lower()

	if name in keywords || name in genwords {
		name = 'gd_${name}'
	}

	if name.starts_with('_') {
		name = '${name[1..]}_'
	}

	return name
}

// convert type from C++ to V
fn convert_type(_type string) string {
	mut type := _type

	type = type.replace('enum::', '')
	type = type.replace('.', '')
	type = type.replace('bitfield::', '')
	type = type.replace('const ', '')
	type = type.replace('void*', 'voidptr')
	type = type.replace('uint8_t', 'u8')
	type = type.replace('int8_t', 'i8')
	type = type.replace('uint16_t', 'u16')
	type = type.replace('int16_t', 'i16')
	type = type.replace('uint32_t', 'u32')
	type = type.replace('int32_t', 'i32')
	type = type.replace('uint64_t', 'u64')
	type = type.replace('int64_t', 'i64')
	type = type.replace('uint8', 'u8')
	type = type.replace('int8', 'i8')
	type = type.replace('uint16', 'u16')
	type = type.replace('int16', 'i16')
	type = type.replace('uint32', 'u32')
	type = type.replace('int32', 'i32')
	type = type.replace('uint64', 'u64')
	type = type.replace('int64', 'i64')
	type = type.replace('double', 'f64')
	type = type.replace('real_t', 'f64')

	if type == 'Error' {
		type = 'GD${type}'
	}

	if type.starts_with('typedarray::') {
		type = 'Array'
	}
	type = type.replace('::', '')

	for type.ends_with('*') {
		type = '&${type[..type.len - 1]}'
	}

	if type.replace('&', '') == 'int' {
		type = type.replace('int', 'i64')
	}

	if type.replace('&', '') == 'float' {
		type = type.replace('float', 'f64')
	}

	return type
}

// convert return type from C++ to V
fn convert_return(type string, orig string, enum_defaults map[string]string) string {
	return match true {
		type == 'bool' {
			'false'
		}
		type == 'voidptr' {
			'unsafe{nil}'
		}
		type in numbers {
			'${type}(0)'
		}
		orig.starts_with('enum::') || orig.starts_with('bitfield::') {
			'i64(${type}.${enum_defaults[type]})'
		}
		else {
			'${type}{}'
		}
	}
}

// convert string types to `string`
fn convert_strings(type string) string {
	if type in strings {
		return 'string'
	}
	return type
}
