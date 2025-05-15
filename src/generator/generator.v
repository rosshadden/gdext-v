module generator

import json
import os
import strings

// 64bit
const platform_index = 1

pub struct Generator {
	api API @[required]
mut:
	class_names   []string
	builtin_names []string
	enum_defaults map[string]string = map[string]string{}
}

pub fn Generator.new(api_dump string) Generator {
	api := json.decode(API, api_dump) or { panic('Failed to parse API dump JSON: ${err}') }

	return Generator{
		api: api
	}
}

pub fn (mut g Generator) run() ! {
	g.setup()

	g.gen_functions()!
	g.gen_enums()!
	g.gen_builtin_classes()!
	g.gen_classes()!
	g.gen_structs()!
	g.gen_virtual_methods()!
}

// makes useful mappings
// - populate class names
// - populate enum defaults with the first value of each enum
fn (mut g Generator) setup() {
	for enm in g.api.global_enums {
		name := convert_type(enm.name)
		g.enum_defaults[name] = convert_name(enm.values.first().name)
	}
	for class in g.api.classes {
		g.class_names << convert_type(class.name)
		for class_enum in class.enums {
			g.enum_defaults['${class.name}${class_enum.name}'] = convert_name(class_enum.values.first().name)
		}
	}
	for class in g.api.builtin_classes {
		g.builtin_names << convert_type(class.name)
		for class_enum in class.enums {
			g.enum_defaults['${class.name}${class_enum.name}'] = convert_name(class_enum.values.first().name)
		}
	}
}

fn (g &Generator) gen_enums() ! {
	mut buf := strings.new_builder(1024)
	buf.writeln('module gd')

	for enm in g.api.global_enums {
		name := convert_type(enm.name)
		buf.writeln('')
		buf.writeln('pub enum ${name} as i64 {')
		mut bits := []i64{cap: enm.values.len}

		for val in enm.values {
			if val.value !in bits {
				bits << val.value
				buf.writeln('\t${val.name.to_lower()} = ${val.value}')
			}
		}

		buf.writeln('}')
	}

	mut f := os.create('src/__enums.v')!
	defer { f.close() }
	f.write(buf)!
}

fn (g &Generator) gen_functions() ! {
	mut buf := strings.new_builder(1024)
	buf.writeln('module gd')

	for method in g.api.utility_functions {
		has_return := method.return_type != ''
		return_type := convert_type(method.return_type)
		method_name := convert_name(method.name)

		// fn def
		buf.writeln('')
		buf.write_string('pub fn ${method_name}(')

		// args
		for a, arg in method.arguments {
			if a != 0 {
				buf.write_string(', ')
			}

			// For the last argument in a vararg function, make it vararg
			if method.is_vararg && a == method.arguments.len - 1 {
				buf.write_string('varargs ...${convert_type(arg.type)}')
			} else {
				buf.write_string('${convert_name(arg.name)} ${convert_type(arg.type)}')
			}
		}

		// return signature
		if has_return {
			buf.writeln(') ${return_type} {')
		} else {
			buf.writeln(') {')
		}

		// body
		if has_return {
			buf.writeln('\tmut result := ${convert_return(return_type, method.return_type,
				g.enum_defaults)}')
		}
		buf.writeln('\tfnname := StringName.new("${method_name}")')
		buf.writeln('\tdefer { fnname.deinit() }')

		buf.writeln('\tf := gdf.variant_get_ptr_utility_function(voidptr(&fnname), ${method.hash})')

		// Handle args
		if method.arguments.len > 0 {
			if method.is_vararg {
				// Calculate total args: regular args + varargs
				fixed_args_count := method.arguments.len - 1
				buf.writeln('\ttotal_args := ${fixed_args_count} + varargs.len')

				// Create array to hold all arguments
				buf.writeln('\tmut args := []voidptr{cap: total_args}')

				// Add the fixed arguments
				for arg in method.arguments[..fixed_args_count] {
					buf.writeln('\targs << voidptr(&${convert_name(arg.name)})')
				}

				// Add each vararg - we need to create a copy of each value
				buf.writeln('\tfor i in 0..varargs.len {')
				buf.writeln('\t\targs << voidptr(&varargs[i])')
				buf.writeln('\t}')

				// Function call with args
				if has_return {
					buf.writeln('\tf(voidptr(&result), unsafe { voidptr(&args[0]) }, total_args)')
				} else {
					buf.writeln('\tf(unsafe{nil}, unsafe { voidptr(&args[0]) }, total_args)')
				}
			} else {
				// Regular non-vararg function
				buf.writeln('\tmut args := unsafe { [${method.arguments.len}]voidptr{} }')
				for a, arg in method.arguments {
					buf.writeln('\targs[${a}] = voidptr(&${convert_name(arg.name)})')
				}

				// Function call with args
				if has_return {
					buf.writeln('\tf(voidptr(&result), voidptr(&args[0]), ${method.arguments.len})')
				} else {
					buf.writeln('\tf(unsafe{nil}, voidptr(&args[0]), ${method.arguments.len})')
				}
			}
		} else {
			// No args function call
			if has_return {
				buf.writeln('\tf(voidptr(&result), unsafe{nil}, 0)')
			} else {
				buf.writeln('\tf(unsafe{nil}, unsafe{nil}, 0)')
			}
		}

		// return
		if has_return {
			buf.writeln('\treturn result')
		}

		// end
		buf.writeln('}')
	}

	// call_func
	buf.writeln('
		|// TODO: see if we can leverage the passed-in FunctionData
		|fn call_func[T](user_data voidptr, instance GDExtensionClassInstancePtr, args &&Variant, arg_count GDExtensionInt, ret &Variant, err &GDExtensionCallError) {
		|	mut inst := unsafe { &T(instance) }
		|	method_data := unsafe { &FunctionData(user_data) }
		|	// HACK: there is no way this nested `\$for` is actually necessary...
		|	\$for method in T.methods {
		|		if method == method_data {
		|			mut params := []voidptr{}
		|			// handle params
		|			// TODO: expand arg type coverage
		|			// TODO: leverage `ToVariant` and `FromVariant` interfaces
		|			mut p := 0
		|			\$for param in method.params {
		|				prm := unsafe { &args[p] }
		|				\$if param.typ is &bool {
		|					value := prm.to_bool()
		|					params << &value
		|				} \$else \$if param.typ is &string {
		|					value := prm.to_string()
		|					params << &value
		|				} \$else \$if param.typ is &int {
		|					value := prm.to_int()
		|					params << &value
		|				} \$else \$if param.typ is &i64 {
		|					value := i64_from_variant(prm)
		|					params << &value
		|				} \$else \$if param.typ is &f64 {
		|					value := f64_from_variant(prm)
		|					params << &value
	'.strip_margin().trim_right('\n'))

	for class in g.api.builtin_classes {
		if class.name.is_lower() {
			continue
		}
		buf.writeln('
			|				} \$else \$if param.typ is &${class.name} {
			|					mut value := ${class.name}{}
			|					value.from_variant(prm)
			|					params << &value
		'.strip_margin().trim('\n'))
	}

	for class in g.api.classes {
		buf.writeln('
			|				} \$else \$if param.typ is &${class.name} {
			|					mut value := ${class.name}{}
			|					value.from_variant(prm)
			|					params << &value
		'.strip_margin().trim('\n'))
	}

	buf.writeln("
		|				} \$else {
		|					params << &prm
		|				}
		|				p += 1
		|			}
		|			if p != arg_count {
		|				panic('call_func: argument count mismatch')
		|			}
		|			// handle return value
		|			\$if method.return_type is bool {
		|				result := inst.\$method(...params)
		|				ret.from_bool(result)
		|			} \$else \$if method.return_type is string {
		|				result := inst.\$method(...params)
		|				str := String.new(result)
		|				variant := str.to_variant()
		|				ret.from_variant(variant)
		|			} \$else \$if method.return_type is int {
		|				result := inst.\$method(...params)
		|				ret.from_int(result)
		|			} \$else \$if method.return_type is i64 {
		|				result := inst.\$method(...params)
		|				ret.from_variant(i64_to_variant(result))
		|			} \$else \$if method.return_type is f64 {
		|				result := inst.\$method(...params)
		|				ret.from_variant(f64_to_variant(result))
		|			} \$else \$if method.return_type is ToVariant {
		|				result := inst.\$method(...params)
		|				variant := result.to_variant()
		|				ret.from_variant(variant)
		|			} \$else {
		|				// TODO: \$if method.return_type == 1
		|				// void
		|				inst.\$method(...params)
		|			}
		|		}
		|	}
		|}
	".strip_margin().trim('\n'))

	mut f := os.create('src/__functions.v')!
	defer { f.close() }
	f.write(buf)!
}

fn (g &Generator) gen_builtin_classes() ! {
	for class in g.api.builtin_classes {
		if class.name.is_lower() {
			continue
		}

		class_name := convert_type(class.name)
		mut buf := strings.new_builder(1024)

		// module
		buf.writeln('module gd')

		// enums
		for enm in class.enums {
			mut bits := []i64{cap: enm.values.len}
			buf.writeln('')
			buf.writeln('pub enum ${class.name}${enm.name} as i64 {')

			for val in enm.values {
				if val.value !in bits {
					bits << val.value
					buf.writeln('\t${val.name.to_lower()} = ${val.value}')
				}
			}
			buf.writeln('}')
		}

		// struct
		buf.writeln('')
		buf.writeln('@[packed]')
		buf.writeln('pub struct ${class.name} {')
		mut defined_size := 0
		if members := g.api.builtin_class_member_offsets[platform_index].classes.filter(it.name == class.name)[0] {
			sorted_mem := members.members.sorted(a.offset < b.offset)
			buf.writeln('pub mut:')
			for mem in sorted_mem {
				if mem.meta in ['int32', 'float'] {
					defined_size += 4
				} else {
					defined_size += g.api.builtin_class_sizes[platform_index].sizes.filter(it.name == mem.meta).first().size
				}
				if mem.meta == 'float' {
					buf.writeln('\t${mem.member} f32 // offset ${mem.offset}')
				} else {
					buf.writeln('\t${mem.member} ${convert_type(mem.meta)} // offset ${mem.offset}')
				}
			}
		}
		class_size := g.api.builtin_class_sizes[platform_index].sizes.filter(it.name == class.name).first().size
		if defined_size < class_size {
			buf.writeln('\tdata_ [${class_size - defined_size}]u8')
		}

		if defined_size > class_size {
			println('${class.name} defined size ${defined_size} does not match class size ${class_size}')
		}
		buf.writeln('}')

		// constants
		for constant in class.constants {
			const_name := '${class.name.to_lower()}_${convert_name(constant.name)}'
			value := convert_dumb_value(class.name, constant.value) or { 'none' }
			buf.writeln('
				|pub const ${const_name} = ${value}
				|@[inline]
				|pub fn ${class.name}.${convert_name(constant.name)}() ${constant.type} {
				|	return ${const_name}
				|}
			'.strip_margin().trim_right('\n'))
		}

		// constructors
		for constructor in class.constructors {
			buf.writeln('')
			buf.write_string('pub fn ${class.name}.new${constructor.index}(')
			for a, arg in constructor.arguments {
				if a != 0 {
					buf.write_string(', ')
				}
				buf.write_string('${arg.name} &${convert_type(arg.type)}')
			}
			buf.writeln(') ${class.name} {')
			buf.writeln('\tmut inst := ${class.name}{}')
			buf.writeln('\tconstructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_${class.name.to_lower()}, ${constructor.index})')
			if constructor.arguments.len > 0 {
				buf.writeln('\tmut args := unsafe { [${constructor.arguments.len}]voidptr{} }')
				for a, arg in constructor.arguments {
					buf.writeln('\targs[${a}] = ${arg.name}')
				}
				buf.writeln('\tconstructor(voidptr(&inst), voidptr(&args[0]))')
			} else {
				buf.writeln('\tconstructor(voidptr(&inst), unsafe{nil})')
			}
			buf.writeln('\treturn inst')
			buf.writeln('}')
		}

		// destructor
		if class.has_destructor {
			buf.writeln('')
			buf.writeln('pub fn (s &${class.name}) deinit() {')
			buf.writeln('\tdestructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_${class.name.to_lower()})')
			buf.writeln('\tdestructor(voidptr(s))')
			buf.writeln('}')
		}

		// methods
		for method in class.methods {
			has_return := method.return_type != ''
			return_type := convert_type(method.return_type)
			method_name := convert_name(method.name)
			ptr := match true {
				method.is_static { 'unsafe{nil}' }
				class.name in g.class_names { 's.ptr' }
				else { 'voidptr(s)' }
			}

			// fn def
			buf.writeln('')
			if method.is_static {
				buf.write_string('pub fn ${class.name}.${method_name}(')
			} else {
				buf.write_string('pub fn (s &${class.name}) ${method_name}(')
			}

			// args signature
			for a, arg in method.arguments {
				if a != 0 {
					buf.write_string(', ')
				}
				buf.write_string('${convert_name(arg.name)} ${convert_type(arg.type)}')
			}

			// return signature
			if has_return {
				buf.writeln(') ${return_type} {')
			} else {
				buf.writeln(') {')
			}

			// body
			if has_return {
				buf.writeln('\tmut result := ${convert_return(return_type, method.return_type,
					g.enum_defaults)}')
			}
			buf.writeln('\tfnname := StringName.new("${method.name}")')
			buf.writeln('\tdefer { fnname.deinit() }')

			buf.writeln('\tf := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_${class.name.to_lower()}, voidptr(&fnname), ${method.hash})')

			// args
			if method.arguments.len > 0 {
				buf.writeln('\tmut args := unsafe { [${method.arguments.len}]voidptr{} }')
				for a, arg in method.arguments {
					mut name := convert_name(arg.name)
					buf.writeln('\targs[${a}] = voidptr(&${name})')
				}
			}

			// call
			arg_ptr := if method.arguments.len > 0 {
				'voidptr(&args[0])'
			} else {
				'unsafe{nil}'
			}
			return_ptr := if has_return {
				'voidptr(&result)'
			} else {
				'unsafe{nil}'
			}
			buf.writeln('\tf(${ptr}, ${arg_ptr}, ${return_ptr}, ${method.arguments.len})')

			// return
			if has_return {
				buf.writeln('\treturn result')
			}

			// end
			buf.writeln('}')
		}

		// to variant
		buf.writeln('
			|pub fn (s &${class.name}) to_variant() Variant {
			|	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_${class.name.to_lower()})
			|	result := Variant{}
			|	to_variant(GDExtensionUninitializedVariantPtr(&result), GDExtensionTypePtr(s))
			|	return result
			|}
		'.strip_margin().trim_right('\n'))

		// from variant
		buf.writeln('
			|pub fn (mut s ${class.name}) from_variant(variant &Variant) {
			|	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_${class.name.to_lower()})
			|	variant_to_type(voidptr(&s), variant)
			|}
		'.strip_margin().trim_right('\n'))

		if class.indexing_return_type != '' {
			return_type := convert_type(class.indexing_return_type)

			// keyed
			if class.is_keyed {
				// get
				buf.writeln('
					|pub fn (v &${class.name}) index_get(i &Variant) ?Variant {
					|	as_var := v.to_variant()
					|	ret := Variant{}
					|	suc := GDExtensionBool(false)
					|	gdf.variant_get(&as_var, i, voidptr(&ret), &suc)
					|	if suc != GDExtensionBool(true) {
					|		return none
					|	}
					|	return ret
					|}
				'.strip_margin().trim_right('\n'))

				// get_named
				buf.writeln('
					|pub fn (v &${class.name}) index_get_named(sn &StringName) ?Variant {
					|	as_var := v.to_variant()
					|	ret := Variant{}
					|	suc := GDExtensionBool(false)
					|	gdf.variant_get_named(&as_var, sn, voidptr(&ret), &suc)
					|	if suc != GDExtensionBool(true) {
					|		return none
					|	}
					|	return ret
					|}
				'.strip_margin().trim_right('\n'))

				// get_keyed
				buf.writeln('
					|pub fn (v &${class.name}) index_get_keyed(i &Variant) ?Variant {
					|	as_var := v.to_variant()
					|	ret := Variant{}
					|	suc := GDExtensionBool(false)
					|	gdf.variant_get_keyed(&as_var, i, voidptr(&ret), &suc)
					|	if suc != GDExtensionBool(true) {
					|		return none
					|	}
					|	return ret
					|}
				'.strip_margin().trim_right('\n'))

				// set
				buf.writeln('
					|pub fn (v &${class.name}) index_set(key &Variant, value &Variant) ! {
					|	as_var := v.to_variant()
					|	suc := GDExtensionBool(false)
					|	gdf.variant_set(&as_var, key, value, &suc)
					|	if suc != GDExtensionBool(true) {
					|		return error("invalid set on ${class.name}")
					|	}
					|}
				'.strip_margin().trim_right('\n'))

				// set_named
				buf.writeln('
					|pub fn (v &${class.name}) index_set_named(key &StringName, value &Variant) ! {
					|	as_var := v.to_variant()
					|	suc := GDExtensionBool(false)
					|	gdf.variant_set_named(&as_var, key, value, &suc)
					|	if suc != GDExtensionBool(true) {
					|		return error("invalid set_named on ${class.name}")
					|	}
					|}
				'.strip_margin().trim_right('\n'))

				// set_keyed
				buf.writeln('
					|pub fn (v &${class.name}) index_set_keyed(key &Variant, value &Variant) ! {
					|	as_var := v.to_variant()
					|	suc := GDExtensionBool(false)
					|	gdf.variant_set_keyed(&as_var, key, value, &suc)
					|	if suc != GDExtensionBool(true) {
					|		return error("invalid set_keyed on ${class.name}")
					|	}
					|}
				'.strip_margin().trim_right('\n'))
			} else {
				// index
				buf.writeln('')
				buf.writeln('pub fn (v &${class.name}) index(i i64) ${return_type} {')
				buf.writeln('\tindex_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_${class.name.to_lower()})')
				if return_type in numbers {
					buf.writeln('\tmut result := ${return_type}(0)')
				} else {
					buf.writeln('\tmut result := ${return_type}{}')
				}
				buf.writeln('\tindex_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&result))')
				buf.writeln('\treturn result')
				buf.writeln('}')
			}
		}

		// operators
		gen_operators(mut buf, class_name, class.operators)

		mut f := os.create('src/_${class.name}.v')!
		defer { f.close() }
		f.write(buf)!
	}
}

fn (g &Generator) gen_classes() ! {
	for class in g.api.classes {
		mut buf := strings.new_builder(1024)

		// module
		buf.writeln('module gd')

		// enums
		for enm in class.enums {
			mut bits := []i64{cap: enm.values.len}
			buf.writeln('')
			buf.writeln('pub enum ${class.name}${enm.name} as i64 {')

			for val in enm.values {
				if val.value !in bits {
					bits << val.value
					buf.writeln('\t${val.name.to_lower()} = ${val.value}')
				}
			}
			buf.writeln('}')
		}

		// struct
		buf.writeln('')
		buf.writeln('@[noinit]')
		buf.writeln('pub struct ${class.name} {')
		if class.inherits == '' {
			buf.writeln('pub mut:')
			buf.writeln('\tptr voidptr = unsafe{nil}')
		} else {
			buf.writeln('\t${convert_type(class.inherits)}')
		}
		buf.writeln('}')

		// constants
		for constant in class.constants {
			const_name := '${class.name.to_lower()}_${convert_name(constant.name)}'
			buf.writeln('
				|pub const ${const_name} = ${constant.value}
				|@[inline]
				|pub fn ${class.name}.${convert_name(constant.name)}() int {
				|	return ${const_name}
				|}
			'.strip_margin().trim_right('\n'))
		}

		// constructor
		if class.is_instantiable {
			buf.writeln("
				|pub fn ${class.name}.new() ${class.name} {
				|	variant := gd.ClassDB.singleton().instantiate('${class.name}')
				|	mut result := gd.${class.name}{}
				|	result.from_variant(variant)
				|	return result
				|}
			".strip_margin().trim_right('\n'))
		}

		// singleton
		singletons := g.api.singletons.filter(it.type == class.name)
		if singletons.len > 0 {
			buf.writeln("
				|pub fn ${class.name}.singleton() ${class.name} {
				|	sn := StringName.new('${class.name}')
				|	defer { sn.deinit() }
				|	result := ${class.name}{
				|		ptr: gdf.global_get_singleton(sn)
				|	}
				|	return result
				|}
			".strip_margin().trim_right('\n'))
		}

		// to variant
		buf.writeln('
			|pub fn (s &${class.name}) to_variant() Variant {
			|	if s.ptr == unsafe { nil } { return Variant{} }
			|	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
			|	result := Variant{}
			|	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
			|	return result
			|}
		'.strip_margin().trim_right('\n'))

		// from variant
		buf.writeln('
			|pub fn (mut s ${class.name}) from_variant(variant &Variant) {
			|	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
			|	variant_to_type(voidptr(&s.ptr), variant)
			|}
		'.strip_margin().trim_right('\n'))

		// methods
		for method in class.methods {
			has_return := method.return_value.type != ''
			return_type := convert_type(method.return_value.type)
			method_name := convert_name(method.name)
			has_optionals := method.arguments.any(it.default_value != '')
			ptr := match true {
				method.is_static { 'unsafe{nil}' }
				class.name in g.class_names { 's.ptr' }
				else { 'voidptr(s)' }
			}

			if method.is_virtual {
				buf.writeln('')
				buf.writeln('pub interface ${interface_name(.virtual, class.name, method.name)} {')
				buf.writeln('mut:')
				mut virt_name := '${convert_name(method.name[1..])}_'

				buf.write_string('\t${virt_name}(')
				for i, arg in method.arguments {
					if i != 0 {
						buf.write_string(', ')
					}

					mut name := convert_name(arg.name)
					buf.write_string('${name} ${convert_type(arg.type)}')
				}
				if has_return {
					buf.writeln(') ${return_type}')
				} else {
					buf.writeln(')')
				}
				buf.writeln('}')
			}

			// create trailing struct for optional arguments
			if has_optionals {
				buf.writeln('')
				buf.writeln('@[params]')
				buf.writeln('pub struct ${class.name}_${method_name}_Cfg {')
				buf.writeln('pub:')
				for arg in method.arguments {
					// skip required args
					if arg.default_value == '' {
						continue
					}
					field_name := convert_name(arg.name)
					field_type := convert_strings(convert_type(arg.type))
					field_value := if val := convert_dumb_value(arg.type, arg.default_value) {
						' = ${val}'
					} else {
						''
					}
					buf.writeln('\t${field_name} ${field_type}${field_value}')
				}
				buf.writeln('}')
			}

			// fn def
			buf.writeln('')
			if method.is_static {
				buf.write_string('pub fn ${class.name}.${method_name}(')
			} else {
				buf.write_string('pub fn (s &${class.name}) ${method_name}(')
			}

			// args
			mut first_arg := true
			for arg in method.arguments {
				if arg.default_value != '' {
					continue
				}
				if first_arg {
					first_arg = false
				} else {
					buf.write_string(', ')
				}
				buf.write_string('${convert_name(arg.name)} ${convert_strings(convert_type(arg.type))}')
			}

			// trailing struct
			if has_optionals {
				if !first_arg {
					buf.write_string(', ')
				}
				buf.write_string('cfg ${class.name}_${method_name}_Cfg')
			}

			// return signature
			if has_return {
				buf.writeln(') ${convert_strings(return_type)} {')
			} else {
				buf.writeln(') {')
			}

			// body
			if has_return {
				buf.writeln('\tmut result := ${convert_return(return_type, method.return_value.type,
					g.enum_defaults)}')
			}
			buf.writeln('\tclassname := StringName.new("${class.name}")')
			buf.writeln('\tfnname := StringName.new("${method.name}")')
			buf.writeln('\tdefer {')
			buf.writeln('\t\tclassname.deinit()')
			buf.writeln('\t\tfnname.deinit()')
			buf.writeln('\t}')
			buf.writeln('\tmb := gdf.classdb_get_method_bind(&classname, &fnname, ${method.hash})')

			if method.arguments.len > 0 {
				buf.writeln('\tmut args := unsafe { [${method.arguments.len}]voidptr{} }')
				for a, arg in method.arguments {
					mut name := convert_name(arg.name)
					name_prefix := if has_optionals && arg.default_value != '' {
						'cfg.'
					} else {
						''
					}
					match true {
						arg.type in strings {
							buf.writeln('\targ_sn${a} := ${arg.type}.new(${name_prefix}${name})')
							buf.writeln('\tdefer { arg_sn${a}.deinit() }')
							buf.writeln('\targs[${a}] = unsafe{voidptr(&arg_sn${a})}')
						}
						convert_type(arg.type) in g.class_names {
							buf.writeln('\targs[${a}] = voidptr(&${name_prefix}${name}.ptr)')
						}
						arg.type.starts_with('enum::') || arg.type.starts_with('bitfield::') {
							buf.writeln('\ti64_${name} := i64(${name_prefix}${name})')
							buf.writeln('\targs[${a}] = unsafe{voidptr(&i64_${name})}')
						}
						else {
							buf.writeln('\targs[${a}] = unsafe{voidptr(&${name_prefix}${name})}')
						}
					}
				}
				if has_return {
					buf.writeln('\tgdf.object_method_bind_ptrcall(mb, ${ptr}, voidptr(&args[0]), voidptr(&result))')
				} else {
					buf.writeln('\tgdf.object_method_bind_ptrcall(mb, ${ptr}, voidptr(&args[0]), unsafe{nil})')
				}
			} else {
				if has_return {
					buf.writeln('\tgdf.object_method_bind_ptrcall(mb, ${ptr}, unsafe{nil}, voidptr(&result))')
				} else {
					buf.writeln('\tgdf.object_method_bind_ptrcall(mb, ${ptr}, unsafe{nil}, unsafe{nil})')
				}
			}

			// return
			if has_return {
				match true {
					method.return_value.type in strings {
						buf.writeln('\tresult_v := result.to_v()')
						buf.writeln('\tdefer { result.deinit() }')
						buf.writeln('\treturn result_v')
					}
					method.return_value.type.starts_with('enum::')
						|| method.return_value.type.starts_with('bitfield::') {
						buf.writeln('\treturn unsafe{${return_type}(result)}')
					}
					else {
						buf.writeln('\treturn result')
					}
				}
			}

			// end
			buf.writeln('}')
		}

		mut f := os.create('src/_${class.name}.v')!
		defer { f.close() }
		f.write(buf)!
	}
}

fn (g &Generator) gen_structs() ! {
	mut buf := strings.new_builder(1024)
	buf.writeln('module gd')

	for structure in g.api.native_structures {
		structure_name := convert_type(structure.name)

		buf.writeln('')
		buf.writeln('pub struct ${structure_name} {')

		members := structure.format.split(';')
		buf.writeln('pub mut:')
		for member in members {
			segments := member.split(' = ')
			parts := segments[0].split(' ')

			mut mtype := convert_type(parts[..parts.len - 1].join(' '))
			mut mname := convert_name(parts.last())
			for mname.starts_with('*') {
				mtype = '&${mtype}'
				mname = mname[1..]
			}

			mut mvalue := (segments[1] or { '' }).trim_space()
			if mvalue.ends_with('f') {
				mvalue = mvalue[..mvalue.len - 1]
			}
			if mvalue.ends_with('.') {
				mvalue = mvalue[..mvalue.len - 1]
			}
			if segments.len > 1 && mvalue != '0' {
				buf.writeln('\t${mname} ${mtype} = ${mvalue}')
			} else {
				buf.writeln('\t${mname} ${mtype}')
			}
		}

		buf.writeln('}')
	}

	mut f := os.create('src/__structs.v')!
	defer { f.close() }
	f.write(buf)!
}

fn (g &Generator) class_to_variant_type(class_name string) string {
	name := convert_type(class_name)
	return match true {
		name in g.builtin_names { '.type_${name.to_lower()}' }
		name in g.class_names { '.type_object' }
		else { '.type_nil' }
	}
}

fn (g &Generator) gen_virtual_methods() ! {
	mut buf := strings.new_builder(1024)
	buf.writeln('module gd')

	// methods
	for class in g.api.classes {
		for method in class.methods {
			if !method.is_virtual {
				continue
			}

			name := interface_name(.virtual, class.name, method.name)
			virt_name := '${convert_name(method.name[1..])}_'

			buf.writeln('')
			buf.writeln('fn ${convert_type(class.name).to_lower()}_${convert_name(method.name)}[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {')
			buf.writeln('\tmut v_inst := &${name}(unsafe{&T(voidptr(inst))})')

			for i, arg in method.arguments {
				buf.writeln('\t${convert_name(arg.name)} := unsafe{&${convert_type(arg.type)}(args[${i}])}')
			}

			buf.write_string('\t')
			if method.return_value.type != '' {
				buf.write_string('*(&${convert_type(method.return_value.type)}(ret)) := ')
			}
			buf.write_string('v_inst.${virt_name}(')
			for i, arg in method.arguments {
				if i != 0 {
					buf.write_string(', ')
				}
				buf.write_string('${convert_name(arg.name)}')
			}
			buf.writeln(')')

			buf.writeln('}')
		}
	}

	// registrar
	buf.writeln('fn register_virtual_methods[T](mut ci ClassInfo) {')
	for class in g.api.classes {
		for method in class.methods {
			if !method.is_virtual {
				continue
			}

			name := interface_name(.virtual, class.name, method.name)
			full_name := '${convert_type(class.name).to_lower()}_${convert_name(method.name)}'

			buf.writeln('\t\$if T is ${name} {{')

			// HACK: force function generation
			buf.writeln('\t\t// HACK: force function generation')
			buf.writeln('\t\tif false { unsafe { ${full_name}[T](nil, nil, nil) } }')
			buf.writeln('\t\tfunc := ${full_name}[T]')
			buf.writeln('\t\tivar := i64(func)')
			buf.writeln('\t\tvar := i64_to_variant(ivar)')
			buf.writeln('\t\tsn := StringName.new("${method.name}")')
			buf.writeln('\t\tdefer { sn.deinit() }')
			buf.writeln('\t\tci.virtual_methods.index_set_named(sn, var) or {panic(err)}')

			buf.writeln('\t}}')
		}
	}
	buf.writeln('}')

	mut f := os.create('src/__virtual.v')!
	defer { f.close() }
	f.write(buf)!
}
