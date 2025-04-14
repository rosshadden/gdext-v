module generator

import json
import os
import strings

pub struct Generator {
	api API @[required]
mut:
	class_names   []string
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
		buf.writeln('\tfnname := StringName.new("${method_name}")')
		buf.writeln('\tf := gdf.variant_get_ptr_utility_function(voidptr(&fnname), ${method.hash})')

		if method.arguments.len > 0 {
			buf.writeln('\tmut args := unsafe { [${method.arguments.len}]voidptr{} }')
			for a, arg in method.arguments {
				buf.writeln('\targs[${a}] = voidptr(&${convert_name(arg.name)})')
			}
			if has_return {
				buf.writeln('\tf(voidptr(&result), voidptr(&args[0]), ${method.arguments.len})')
			} else {
				buf.writeln('\tf(unsafe{nil}, voidptr(&args[0]), ${method.arguments.len})')
			}
		} else {
			if has_return {
				buf.writeln('\tf(voidptr(&result), unsafe{nil}, ${method.arguments.len})')
			} else {
				buf.writeln('\tf(unsafe{nil}, unsafe{nil}, ${method.arguments.len})')
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

	mut f := os.create('src/__functions.v')!
	defer { f.close() }
	f.write(buf)!
}

fn (g &Generator) gen_builtin_classes() ! {
	for class in g.api.builtin_classes {
		if class.name.is_lower() {
			continue
		}

		mut buf := strings.new_builder(1024)

		// module
		buf.writeln('module gd')
		buf.writeln('')

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
		buf.writeln('pub struct ${class.name} {')
		// TODO: fields
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
		buf.writeln('\tvar_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_${class.name.to_lower()})')
		buf.writeln('\tvar_to_type(voidptr(&t), var)')
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

		// TODO: operators

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
		buf.writeln('pub struct ${class.name} {')
		// TODO: fields
		if class.inherits == '' {
			buf.writeln('pub mut:')
			buf.writeln('\tptr voidptr = unsafe{nil}')
		} else {
			buf.writeln('\t${convert_type(class.inherits)}')
		}
		buf.writeln('}')

		// TODO: singletons

		// methods
		for method in class.methods {
			has_return := method.return_value.type != ''
			return_type := convert_type(method.return_value.type)
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
				buf.write_string('${convert_name(arg.name)} ${convert_strings(convert_type(arg.type))}')
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
					match true {
						arg.type in strings {
							buf.writeln('\targ_sn${a} := ${arg.type}.new(${name})')
							buf.writeln('\targs[${a}] = unsafe{voidptr(&arg_sn${a})}')
						}
						convert_type(arg.type) in g.class_names {
							buf.writeln('\targs[${a}] = voidptr(&${name}.ptr)')
						}
						arg.type.starts_with('enum::') || arg.type.starts_with('bitfield::') {
							buf.writeln('\ti64_${name} := i64(${name})')
							buf.writeln('\targs[${a}] = unsafe{voidptr(&i64_${name})}')
						}
						else {
							buf.writeln('\targs[${a}] = unsafe{voidptr(&${name})}')
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
