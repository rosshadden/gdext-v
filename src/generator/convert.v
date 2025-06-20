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
		name = 'gd_${name[1..]}'
	}

	return name
}

// convert type from C++ to V
fn convert_type(_type string) string {
	mut type := _type

	type = type.replace('enum::', '')

	// strip prefix if redundant
	if _type.starts_with('enum::') && type.contains('.') && type.after('.').starts_with(type.before('.')) {
		if idx := type.index('.') {
			type = type[idx + 1..]
		}
	}

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

// convert fake value types from Godot's nonsensical and unused dump format to V
fn convert_dumb_value(type string, value_text string) ?string {
	value := value_text.replace('(', '{').replace(')', '}')
	value_inner := value_text.replace('${type}(', '').replace(')', '')
	args := value_inner.split(',').map(it.trim_space())
	return match true {
		value == '""' || value == '&""' {
			none
		}
		(type in numbers || type == 'float') && value != '0' {
			value
		}
		type.starts_with('enum::') {
			'unsafe { ${convert_type(type)}(${value}) }'
		}
		type == 'StringName' {
			value.replace('&', '')
		}
		type == 'Array' {
			'${type}.new0()'
		}
		type == 'NodePath' {
			'NodePath.new0()'
		}
		type == 'Basis' {
			'${type}{Vector3{${args[0]}, ${args[1]}, ${args[2]}}, Vector3{${args[3]}, ${args[4]}, ${args[5]}}, Vector3{${args[6]}, ${args[7]}, ${args[8]}}}'
		}
		type == 'Plane' {
			'${type}{Vector3{${args[0]}, ${args[1]}, ${args[2]}}, ${args[3]}}'
		}
		type == 'Projection' {
			'${type}{Vector4{${args[0]}, ${args[1]}, ${args[2]}, ${args[3]}}, Vector4{${args[4]}, ${args[5]}, ${args[6]}, ${args[7]}}, Vector4{${args[8]}, ${args[9]}, ${args[10]}, ${args[11]}}, Vector4{${args[12]}, ${args[13]}, ${args[14]}, ${args[15]}}}'
		}
		type == 'Transform2D' {
			'${type}{Vector2{${args[0]}, ${args[1]}}, Vector2{${args[2]}, ${args[3]}}, Vector2{${args[4]}, ${args[5]}}}'
		}
		type == 'Transform3D' {
			'${type}{Basis{Vector3{${args[0]}, ${args[1]}, ${args[2]}}, Vector3{${args[3]}, ${args[4]}, ${args[5]}}, Vector3{${args[6]}, ${args[7]}, ${args[8]}} }, Vector3{${args[9]}, ${args[10]}, ${args[11]}}}'
		}
		type.starts_with('Rect2') {
			mut suffix := ''
			if type.ends_with('i') {
				suffix = 'i'
			}
			'${type}{Vector2${suffix}{${args[0]}, ${args[1]}}, Vector2${suffix}{${args[2]}, ${args[3]}}}'
		}
		type.contains('Vector') {
			value.replace('inf', 'max_i32')
		}
		value.starts_with(type) {
			value.replace('(', '{').replace(')', '}')
		}
		else {
			none
		}
	}
}

enum InterfaceType {
	virtual
	signal
}

fn interface_name(type InterfaceType, class_name string, method_name string) string {
	prefix := match type {
		.virtual { '' }
		.signal { 'Signal' }
	}
	mut mname := method_name.capitalize()
	for mname.contains('_') {
		i := mname.index('_') or { panic(err) }
		mname = '${mname[0..i]}${mname[i + 1..].capitalize()}'
	}
	return 'I${prefix}${class_name}${mname}'
}
