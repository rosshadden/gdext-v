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
	g.gen_signals()!
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

		// cleanup
		buf.writeln('\tfnname.deinit()')

		// return
		if has_return {
			buf.writeln('\treturn result')
		}

		// end
		buf.writeln('}')
	}

	// call_func
	buf.writeln("
		|// TODO: see if we can leverage the passed-in FunctionData
		|fn call_func[T](user_data voidptr, instance GDExtensionClassInstancePtr, args &&Variant, arg_count GDExtensionInt, ret &Variant, err &GDExtensionCallError) {
		|	mut inst := unsafe { &T(instance) }
		|	method_data := unsafe { &FunctionData(user_data) }
		|	// HACK: there is no way this nested `\$for` is actually necessary...
		|	\$for method in T.methods {
		|		if method == method_data {
		|			mut params := []voidptr{}
		|
		|			// handle params
		|			// TODO: expand arg type coverage
		|			// TODO: leverage `ToVariant` and `FromVariant` interfaces
		|			mut p := 0
		|			\$for param in method.params {
		|				\$if param.typ is &bool {
		|					value := unsafe { args[p].to_bool() }
		|					params << &value
		|				} \$else \$if param.typ is &string {
		|					value := unsafe { args[p].to_string() }
		|					params << &value
		|				} \$else \$if param.typ is &int {
		|					println('int')
		|					value := unsafe { args[p].to_int() }
		|					params << &value
		|				} \$else \$if param.typ is &i64 {
		|					println('i64')
		|					value := unsafe { i64_from_variant(args[p]) }
		|					params << &value
		|				} \$else \$if param.typ is &f64 {
		|					println('f64')
		|					value := unsafe { f64_from_variant(args[p]) }
		|					params << &value
	".strip_margin().trim_right('\n'))

	for class in g.api.builtin_classes {
		if class.name.is_lower() {
			continue
		}
		buf.writeln('
			|				} \$else \$if param.typ is &${class.name} {
			|					mut value := ${class.name}{}
			|					value.from_variant(unsafe { args[p] })
			|					params << &value
		'.strip_margin().trim('\n'))
	}

	for class in g.api.classes {
		buf.writeln('
			|				} \$else \$if param.typ is &${class.name} {
			|					mut value := ${class.name}{}
			|					value.from_variant(unsafe { args[p] })
			|					params << &value
		'.strip_margin().trim('\n'))
	}

	buf.writeln("
		|				} \$else {
		|					value := unsafe { args[p] }
		|					params << &value
		|				}
		|				p += 1
		|			}
		|			if p != arg_count {
		|				panic('call_func: argument count mismatch')
		|			}
		|
		|			// handle return value
		|			\$if method.return_type is bool {
		|				result := inst.\$method(...params)
		|				ret.from_bool(result)
		|			} \$else \$if method.return_type is string {
		|				result := inst.\$method(...params)
		|				str := String.new(result)
		|				variant := str.to_variant()
		|				ret.from_variant(variant)
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

@[params]
struct OpOptions {
	is_binary      bool
	different_types bool
}

fn gen_operator(mut buf strings.Builder, class_name string, op_name string, op_type string, op APIOperator, opts OpOptions) {
	// Common variables
	class_name_lower := class_name.to_lower()

	// Variables for different types case
	mut right_type := class_name
	mut right_type_lower := class_name_lower
	mut return_type := if opts.is_binary { 'bool' } else { class_name }
	mut res_init := if opts.is_binary { 'false' } else { '${class_name}{}' }
	mut right_type_suffix := ''

	// Handle case with different types (only for op_fn variants)
	if opts.different_types {
		right_type = convert_type(op.right_type)
		right_type_lower = right_type.to_lower()
		right_type_suffix = right_type_lower

		if !opts.is_binary {
			return_type = convert_type(op.return_type)

			if return_type in ['f32', 'f64', 'i8', 'u8', 'i16', 'u16', 'i32', 'u32', 'i64', 'u64'] {
				res_init = '${return_type}(0)'
			} else if return_type == 'voidptr' {
				res_init = 'unsafe{nil}'
			} else {
				res_init = '${return_type}{}'
			}
		}
	}

	// Use $tmpl which will have access to all the variables we've defined
	code := $tmpl('./templates/operator.v').trim_space_right()
	buf.writeln('')
	buf.writeln(code)
}

fn gen_operators(mut buf strings.Builder, class_name string, class APIBuiltinClass) {
	// operators
	for op in class.operators {
		if op.right_type == class_name {
			match op.name {
				'+' {
					gen_operator(mut buf, class_name, '+', '.op_add', op)
				}
				'-' {
					gen_operator(mut buf, class_name, '-', '.op_subtract', op)
				}
				'*' {
					gen_operator(mut buf, class_name, '*', '.op_multiply', op)
				}
				'/' {
					gen_operator(mut buf, class_name, '/', '.op_divide', op)
				}
				'%' {
					gen_operator(mut buf, class_name, '%', '.op_module', op)
				}
				'<' {
					gen_operator(mut buf, class_name, '<', '.op_less', op, is_binary: true)
				}
				'==' {
					gen_operator(mut buf, class_name, '==', '.op_equal', op, is_binary: true)
				}
				else {}
			}
		}
		if op.right_type != 'Variant' {
			match op.name {
				'+' {
					gen_operator(mut buf, class_name, 'add_', '.op_add', op, different_types: true)
				}
				'-' {
					gen_operator(mut buf, class_name, 'sub_', '.op_subtract', op, different_types: true)
				}
				'*' {
					gen_operator(mut buf, class_name, 'mul_', '.op_multiply', op, different_types: true)
				}
				'/' {
					gen_operator(mut buf, class_name, 'div_', '.op_divide', op, different_types: true)
				}
				'%' {
					gen_operator(mut buf, class_name, 'mod_', '.op_module', op, different_types: true)
				}
				'<' {
					gen_operator(mut buf, class_name, 'lt_', '.op_less', op, is_binary: true, different_types: true)
				}
				'>' {
					gen_operator(mut buf, class_name, 'gt_', '.op_greater', op, is_binary: true, different_types: true)
				}
				'==' {
					gen_operator(mut buf, class_name, 'eq_', '.op_equal', op, is_binary: true, different_types: true)
				}
				'!=' {
					gen_operator(mut buf, class_name, 'ne_', '.op_not_equal', op, is_binary: true, different_types: true)
				}
				'<=' {
					gen_operator(mut buf, class_name, 'le_', '.op_less_equal', op, is_binary: true, different_types: true)
				}
				'>=' {
					gen_operator(mut buf, class_name, 'ge_', '.op_greater_equal', op, is_binary: true, different_types: true)
				}
				'in' {
					gen_operator(mut buf, class_name, 'in_', '.op_in', op, is_binary: true, different_types: true)
				}
				else {}
			}
		}
	}
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

		// TODO: constants

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
			buf.writeln('\tgodot_data [${class_size - defined_size}]u8 // filler')
		}

		if defined_size > class_size {
			println('${class.name} defined size ${defined_size} does not match class size ${class_size}')
		}
		buf.writeln('}')

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

			// args
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
			buf.writeln('\tf := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_${class.name.to_lower()}, voidptr(&fnname), ${method.hash})')

			if has_return {
				if method.arguments.len > 0 {
					buf.writeln('\tmut args := unsafe { [${method.arguments.len}]voidptr{} }')

					for a, arg in method.arguments {
						mut name := convert_name(arg.name)
						buf.writeln('\targs[${a}] = voidptr(&${name})')
					}

					buf.writeln('\tf(${ptr}, voidptr(&args[0]), voidptr(&result), ${method.arguments.len})')
				} else {
					buf.writeln('\tf(${ptr}, unsafe{nil}, voidptr(&result), ${method.arguments.len})')
				}
			} else {
				buf.writeln('\tf(${ptr}, unsafe{nil}, unsafe{nil}, ${method.arguments.len})')
			}

			// cleanup
			buf.writeln('\tfnname.deinit()')

			// return
			if has_return {
				buf.writeln('\treturn result')
			}

			// end
			buf.writeln('}')
		}

		// to variant
		buf.writeln('')
		buf.writeln('pub fn (v &${class.name}) to_variant() Variant {')
		buf.writeln('\tto_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_${class.name.to_lower()})')
		buf.writeln('\tresult := Variant{}')
		buf.writeln('\tto_variant(GDExtensionUninitializedVariantPtr(&result), GDExtensionTypePtr(v))')
		buf.writeln('\treturn result')
		buf.writeln('}')

		// from variant
		buf.writeln('')
		buf.writeln('pub fn (mut t ${class.name}) from_variant(var &Variant) {')
		buf.writeln('\tvariant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_${class.name.to_lower()})')
		buf.writeln('\tvariant_to_type(voidptr(&t), var)')
		buf.writeln('}')

		if class.indexing_return_type != '' {
			return_type := convert_type(class.indexing_return_type)

			// keyed
			if class.is_keyed {
				// get
				buf.writeln('')
				buf.writeln('pub fn (v &${class.name}) index_get(i &Variant) ?Variant {')
				buf.writeln('\tas_var := v.to_variant()')
				buf.writeln('\tret := Variant{}')
				buf.writeln('\tsuc := GDExtensionBool(false)')
				buf.writeln('\tgdf.variant_get(&as_var, i, voidptr(&ret), &suc)')
				buf.writeln('\tif suc != GDExtensionBool(true) {')
				buf.writeln('\treturn none')
				buf.writeln('\t}')
				buf.writeln('\treturn ret')
				buf.writeln('}')

				// get_named
				buf.writeln('')
				buf.writeln('pub fn (v &${class.name}) index_get_named(sn &StringName) ?Variant {')
				buf.writeln('\tas_var := v.to_variant()')
				buf.writeln('\tret := Variant{}')
				buf.writeln('\tsuc := GDExtensionBool(false)')
				buf.writeln('\tgdf.variant_get_named(&as_var, sn, voidptr(&ret), &suc)')
				buf.writeln('\tif suc != GDExtensionBool(true) {')
				buf.writeln('\treturn none')
				buf.writeln('\t}')
				buf.writeln('\treturn ret')
				buf.writeln('}')

				// get_keyed
				buf.writeln('')
				buf.writeln('pub fn (v &${class.name}) index_get_keyed(i &Variant) ?Variant {')
				buf.writeln('\tas_var := v.to_variant()')
				buf.writeln('\tret := Variant{}')
				buf.writeln('\tsuc := GDExtensionBool(false)')
				buf.writeln('\tgdf.variant_get_keyed(&as_var, i, voidptr(&ret), &suc)')
				buf.writeln('\tif suc != GDExtensionBool(true) {')
				buf.writeln('\treturn none')
				buf.writeln('\t}')
				buf.writeln('\treturn ret')
				buf.writeln('}')

				// set
				buf.writeln('')
				buf.writeln('pub fn (v &${class.name}) index_set(key &Variant, value &Variant) ! {')
				buf.writeln('\tas_var := v.to_variant()')
				buf.writeln('\tsuc := GDExtensionBool(false)')
				buf.writeln('\tgdf.variant_set(&as_var, key, value, &suc)')
				buf.writeln('\tif suc != GDExtensionBool(true) {')
				buf.writeln('\treturn error("invalid set on ${class.name}")')
				buf.writeln('\t}')
				buf.writeln('}')

				buf.writeln('')
				// set_named
				buf.writeln('pub fn (v &${class.name}) index_set_named(key &StringName, value &Variant) ! {')
				buf.writeln('\tas_var := v.to_variant()')
				buf.writeln('\tsuc := GDExtensionBool(false)')
				buf.writeln('\tgdf.variant_set_named(&as_var, key, value, &suc)')
				buf.writeln('\tif suc != GDExtensionBool(true) {')
				buf.writeln('\treturn error("invalid set_named on ${class.name}")')
				buf.writeln('\t}')
				buf.writeln('}')

				// set_keyed
				buf.writeln('')
				buf.writeln('pub fn (v &${class.name}) index_set_keyed(key &Variant, value &Variant) ! {')
				buf.writeln('\tas_var := v.to_variant()')
				buf.writeln('\tsuc := GDExtensionBool(false)')
				buf.writeln('\tgdf.variant_set_keyed(&as_var, key, value, &suc)')
				buf.writeln('\tif suc != GDExtensionBool(true) {')
				buf.writeln('\treturn error("invalid set_keyed on ${class.name}")')
				buf.writeln('\t}')
				buf.writeln('}')
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
		gen_operators(mut buf, class_name, class)

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
		// buf.writeln('@[noinit]')
		buf.writeln('pub struct ${class.name} {')
		if class.inherits == '' {
			buf.writeln('pub mut:')
			buf.writeln('\tptr voidptr = unsafe{nil}')
		} else {
			buf.writeln('\t${convert_type(class.inherits)}')
		}
		buf.writeln('}')

		// singleton
		singletons := g.api.singletons.filter(it.type == class.name)
		if singletons.len > 0 {
			buf.writeln('')
			buf.writeln('pub fn ${class.name}.singleton() ${class.name} {')
			buf.writeln('\tsn := StringName.new("${class.name}")')
			buf.writeln('\tresult := ${class.name}{')
			buf.writeln('\t\tptr: gdf.global_get_singleton(sn)')
			buf.writeln('\t}')
			buf.writeln('\tsn.deinit()')
			buf.writeln('\treturn result')
			buf.writeln('}')
		}

		// to variant
		buf.writeln('')
		buf.writeln('pub fn (s &${class.name}) to_variant() Variant {')
		buf.writeln('\tto_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)')
		buf.writeln('\tresult := Variant{}')
		buf.writeln('\tto_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)')
		buf.writeln('\treturn result')
		buf.writeln('}')

		// from variant
		buf.writeln('')
		buf.writeln('pub fn (mut s ${class.name}) from_variant(var &Variant) {')
		buf.writeln('\tvariant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)')
		buf.writeln('\tvariant_to_type(voidptr(&s.ptr), var)')
		buf.writeln('}')

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
					if arg.default_value == '' {
						continue
					}
					buf.writeln('\t${convert_name(arg.name)} ${convert_strings(convert_type(arg.type))}')
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

			// cleanup
			for a, arg in method.arguments {
				if arg.type in strings {
					buf.writeln('\targ_sn${a}.deinit()')
				}
			}
			buf.writeln('\tclassname.deinit()')
			buf.writeln('\tfnname.deinit()')

			// return
			if has_return {
				match true {
					method.return_value.type in strings {
						buf.writeln('\tresult_v := result.to_v()')
						buf.writeln('\tresult.deinit()')
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

fn (g &Generator) gen_signals() ! {
	mut buf := strings.new_builder(1024)
	buf.writeln('module gd')

	// interface
	for class in g.api.classes {
		for signal in class.signals {
			i_name := interface_name(.signal, class.name, signal.name)
			buf.writeln('')
			buf.writeln('pub interface ${i_name} {')
			buf.writeln('mut:')
			buf.write_string('\tsignal_${convert_name(signal.name)}(')
			for a, arg in signal.arguments {
				if a != 0 {
					buf.write_string(', ')
				}
				buf.write_string('${convert_name(arg.name)} ${convert_type(arg.type)}')
			}
			buf.writeln(')')
			buf.writeln('}')
		}
	}

	// ptr call
	for class in g.api.classes {
		for signal in class.signals {
			i_name := interface_name(.signal, class.name, signal.name)
			buf.writeln('fn ${i_name.to_lower()}_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {')
			buf.writeln('\tt := unsafe{&T(voidptr(inst))}')
			buf.writeln('\tmut i := ${i_name}(*t)')

			for a, arg in signal.arguments {
				arg_type := convert_type(arg.type)
				if arg_type in g.class_names {
					buf.writeln('\targ_${a}_ptr := unsafe{&voidptr(args[${a}])}')
					buf.writeln('\targ_${a} := ${arg_type}{')
					buf.writeln('\t\tptr: *arg_${a}_ptr')
					buf.writeln('\t}')
				} else {
					buf.writeln('\targ_${a}_ptr := unsafe{&${arg_type}(voidptr(args[${a}]))}')
					buf.writeln('\targ_${a} := *arg_${a}_ptr')
				}
			}
			buf.write_string('\ti.signal_${convert_name(signal.name)}(')
			for a, _ in signal.arguments {
				if a != 0 {
					buf.write_string(', ')
				}
				buf.write_string('arg_${a}')
			}
			buf.writeln(')')
			buf.writeln('}')
		}
	}

	// call
	for class in g.api.classes {
		for signal in class.signals {
			i_name := interface_name(.signal, class.name, signal.name)
			buf.writeln('fn ${i_name.to_lower()}_call[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &&Variant, arg_count GDExtensionInt, ret &Variant, err &GDExtensionCallError) {')
			buf.writeln('\tmut raw_args := []GDExtensionConstTypePtr{}')
			buf.writeln('\tfor i in 0 .. int(arg_count) {')
			buf.writeln('\t\to := gdf.mem_alloc(sizeof[voidptr]())')
			buf.writeln('\t\tf := gdf.get_variant_to_type_constructor(gdf.variant_get_type(unsafe { args[i] }))')
			buf.writeln('\t\tf(o, unsafe { args[i] })')
			buf.writeln('\t\traw_args << GDExtensionConstTypePtr(o)')
			buf.writeln('\t}')
			buf.writeln('\tif int(arg_count) > 0 {')
			buf.writeln('\t\t${i_name.to_lower()}_ptrcall[T](method_userdata, inst, unsafe { &raw_args[0] }, unsafe { nil })')
			buf.writeln('\t}else{')
			buf.writeln('\t\t${i_name.to_lower()}_ptrcall[T](method_userdata, inst, unsafe { nil }, unsafe { nil })')
			buf.writeln('\t}')
			buf.writeln('\tfor i in 0 .. int(arg_count) {')
			buf.writeln('\t\tgdf.mem_free(raw_args[i])')
			buf.writeln('\t}')
			buf.writeln('}')
		}
	}

	buf.writeln('pub fn register_signal_methods[T](mut ci ClassInfo) {')
	for class in g.api.classes {
		for signal in class.signals {
			i_name := interface_name(.signal, class.name, signal.name)
			buf.writeln('\t\$if T is ${i_name} {{')

			if signal.arguments.len > 0 {
				buf.writeln('\t\tmut argument_props := [${signal.arguments.len}]GDExtensionPropertyInfo{}')
				buf.writeln('\t\tmut argument_metadata := [${signal.arguments.len}]GDExtensionClassMethodArgumentMetadata{}')
				for i, a in signal.arguments {
					vartype := g.class_to_variant_type(a.type)
					buf.writeln('\t\tmut arg_name_${i} := StringName.new("${a.name}")')
					buf.writeln('\t\tmut arg_hint_${i} := String.new("")')
					buf.writeln('\t\targument_props[${i}] = GDExtensionPropertyInfo {')
					buf.writeln('\t\t\ttype_: ${vartype}')
					buf.writeln('\t\t\tname: &arg_name_${i}')
					buf.writeln('\t\t\tclass_name: &ci.class_name')
					buf.writeln('\t\t\thint: u32(PropertyHint.property_hint_none)')
					buf.writeln('\t\t\thint_string: &arg_hint_${i}')
					buf.writeln('\t\t\tusage: u32(PropertyUsageFlags.property_usage_default)')
					buf.writeln('\t\t}')

					match vartype {
						'.type_f64' {
							buf.writeln('\t\targument_metadata[${i}] = .gdextension_method_argument_metadata_real_is_double')
						}
						'.type_i64' {
							buf.writeln('\t\targument_metadata[${i}] = .gdextension_method_argument_metadata_int_is_int64')
						}
						else {
							buf.writeln('\t\targument_metadata[${i}] = .gdextension_method_argument_metadata_none')
						}
					}
				}
			}

			buf.writeln('\t\tmethod_name := StringName.new("signal_${convert_name(signal.name)}")')
			buf.writeln('\t\tmethod_info := GDExtensionClassMethodInfo {')
			buf.writeln('\t\t\tname: &method_name')
			buf.writeln('\t\t\tmethod_userdata: unsafe{nil}')
			buf.writeln('\t\t\tcall_func: ${i_name.to_lower()}_call[T]')
			buf.writeln('\t\t\tptrcall_func: ${i_name.to_lower()}_ptrcall[T]')
			buf.writeln('\t\t\tmethod_flags: 1')
			buf.writeln('\t\t\thas_return_value: GDExtensionBool(false)')
			buf.writeln('\t\t\treturn_value_info: unsafe{nil}')
			buf.writeln('\t\t\treturn_value_metadata: GDExtensionClassMethodArgumentMetadata{}')

			buf.writeln('\t\t\targument_count: ${signal.arguments.len}')
			if signal.arguments.len > 0 {
				buf.writeln('\t\t\targuments_info: unsafe{&argument_props[0]}')
				buf.writeln('\t\t\targuments_metadata: unsafe{&argument_metadata[0]}')
			} else {
				buf.writeln('\t\t\targuments_info: unsafe{nil}')
				buf.writeln('\t\t\targuments_metadata: unsafe{nil}')
			}
			buf.writeln('\t\t\tdefault_argument_count: 0')
			buf.writeln('\t\t\tdefault_arguments: unsafe{nil}')
			buf.writeln('\t\t}')
			buf.writeln('\t\tgdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)')
			buf.writeln('\t}}')
		}
	}
	buf.writeln('}')

	mut f := os.create('src/__signals.v')!
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
			buf.writeln('\t\tci.virtual_methods.index_set_named(sn, var) or {panic(err)}')
			buf.writeln('\t\tsn.deinit()')

			buf.writeln('\t}}')
		}
	}
	buf.writeln('}')

	mut f := os.create('src/__virtual.v')!
	defer { f.close() }
	f.write(buf)!
}
