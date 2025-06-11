module gd

const no_meta = GDExtensionClassMethodArgumentMetadata.gdextension_method_argument_metadata_none

pub struct ClassInfo {
mut:
	name            string
	class_name      StringName
	parent_name     StringName
	virtual_methods Dictionary
}

pub interface IClassInit {
mut:
	init()
}

pub interface IClassDeinit {
mut:
	deinit()
}

pub fn register_class_with_name[T](parent_class string, class_name string) {
	println('registering: ${T.name} as ${class_name} [${parent_class}]')
	sn := StringName.new(class_name)
	pn := StringName.new(parent_class)

	mut ci := unsafe { &ClassInfo(gdf.mem_alloc(sizeof[ClassInfo]())) }
	// copy default values:
	ci_v := ClassInfo{}
	unsafe { C.memcpy(ci, &ci_v, sizeof[ClassInfo]()) }
	ci.name = T.name
	ci.class_name = sn
	ci.parent_name = pn
	ci.virtual_methods = Dictionary.new0()

	// @tool support
	mut is_runtime := true
	$for attr in T.attributes {
		$if attr.name == 'gd.tool' {
			is_runtime = false
		}
	}
	info := GDExtensionClassCreationInfo4{
		is_virtual:               GDExtensionBool(false)
		is_abstract:              GDExtensionBool(false)
		is_exposed:               GDExtensionBool(true)
		is_runtime:               GDExtensionBool(is_runtime)
		icon_path:                unsafe { nil }
		set_func:                 class_set_func[T]
		get_func:                 class_get_func[T]
		get_property_list_func:   class_get_property_list[T]
		free_property_list_func:  class_free_property_list[T]
		property_can_revert_func: class_property_can_revert[T]
		property_get_revert_func: class_property_get_revert[T]
		// validate_property_func
		notification_func:          class_notification[T]
		to_string_func:             class_to_string[T]
		reference_func:             class_reference[T]
		unreference_func:           class_unreference[T]
		create_instance_func:       class_create_instance[T]
		free_instance_func:         class_free_instance[T]
		recreate_instance_func:     class_recreate_instance[T]
		get_virtual_func:           class_get_virtual_func[T]
		get_virtual_call_data_func: fn (user_data voidptr, method_name &StringName, hash int) {
			dump('TODO: get_virtual_call_data_func')
		}
		// call_virtual_with_data_func
		class_userdata: ci
	}

	gdf.classdb_register_extension_class4(gdf.clp, &sn, &pn, &info)
	register_virtual_methods[T](mut ci)
	register_class_methods[T](mut ci)
	register_class_properties[T](mut ci)
}

pub fn register_class[T](parent_class string) {
	register_class_with_name[T](parent_class, T.name.split('.').last())
}

fn class_set_func[T](instance GDExtensionClassInstancePtr, name &StringName, variant &Variant) GDExtensionBool {
	vname := name.to_v()
	mut handled := false
	$for field in T.fields {
		if field.name == vname {
			$if field.typ is FromVariant {
				t := unsafe { &T(instance) }
				mut var := FromVariant(t.$(field.name))
				var.from_variant(variant)
				handled = true
			} $else $if field.typ is f64 {
				mut t := unsafe { &T(instance) }
				t.$(field.name) = f64_from_variant(variant)
				handled = true
			} $else $if field.typ is i64 {
				mut t := unsafe { &T(instance) }
				t.$(field.name) = i64_from_variant(variant)
				handled = true
			}
		}
	}
	return GDExtensionBool(handled)
}

fn class_get_func[T](instance GDExtensionClassInstancePtr, name &StringName, mut variant Variant) GDExtensionBool {
	vname := name.to_v()
	mut handled := false
	$for field in T.fields {
		if field.name == vname {
			$if field.typ is ToVariant {
				t := unsafe { &T(instance) }
				var := ToVariant(t.$(field.name))
				variant = var.to_variant()
				handled = true
			} $else $if field.typ is f64 {
				t := unsafe { &T(instance) }
				variant = f64_to_variant(&t.$(field.name))
				handled = true
			} $else $if field.typ is i64 {
				t := unsafe { &T(instance) }
				variant = i64_to_variant(&t.$(field.name))
				handled = true
			}
		}
	}
	return GDExtensionBool(handled)
}

const prop_map = {
	'bool':               GDExtensionVariantType.type_bool
	'int':                GDExtensionVariantType.type_i64
	'i64':                GDExtensionVariantType.type_i64
	'f64':                GDExtensionVariantType.type_f64
	'string':             GDExtensionVariantType.type_string
	'String':             GDExtensionVariantType.type_string
	'Vector2':            GDExtensionVariantType.type_vector2
	'Vector2i':           GDExtensionVariantType.type_vector2i
	'Rect2':              GDExtensionVariantType.type_rect2
	'Rect2i':             GDExtensionVariantType.type_rect2i
	'Vector3':            GDExtensionVariantType.type_vector3
	'Vector3i':           GDExtensionVariantType.type_vector3i
	'Transform2D':        GDExtensionVariantType.type_transform2d
	'Vector4':            GDExtensionVariantType.type_vector4
	'Vector4i':           GDExtensionVariantType.type_vector4i
	'Plane':              GDExtensionVariantType.type_plane
	'Quaternion':         GDExtensionVariantType.type_quaternion
	'AABB':               GDExtensionVariantType.type_aabb
	'Basis':              GDExtensionVariantType.type_basis
	'Transform3D':        GDExtensionVariantType.type_transform3d
	'Projection':         GDExtensionVariantType.type_projection
	'Color':              GDExtensionVariantType.type_color
	'StringName':         GDExtensionVariantType.type_stringname
	'NodePath':           GDExtensionVariantType.type_nodepath
	'RID':                GDExtensionVariantType.type_rid
	'Object':             GDExtensionVariantType.type_object
	'Callable':           GDExtensionVariantType.type_callable
	'Signal':             GDExtensionVariantType.type_signal
	'Dictionary':         GDExtensionVariantType.type_dictionary
	'Array':              GDExtensionVariantType.type_array
	'PackedByteArray':    GDExtensionVariantType.type_packedbytearray
	'PackedInt32Array':   GDExtensionVariantType.type_packedint32array
	'PackedInt64Array':   GDExtensionVariantType.type_packedint64array
	'PackedFloat32Array': GDExtensionVariantType.type_packedfloat32array
	'PackedFloat64Array': GDExtensionVariantType.type_packedfloat64array
	'PackedStringArray':  GDExtensionVariantType.type_packedstringarray
	'PackedVector2Array': GDExtensionVariantType.type_packedvector2array
	'PackedVector3Array': GDExtensionVariantType.type_packedvector3array
	'PackedColorArray':   GDExtensionVariantType.type_packedcolorarray
	'PackedVector4Array': GDExtensionVariantType.type_packedvector4array
}

fn get_property_type(typ string) GDExtensionVariantType {
	// TODO: make better
	return prop_map[typ.split('.').last()] or { return .type_object }
}

fn class_get_property_list[T](instance GDExtensionClassInstancePtr, return_count &u32) &GDExtensionPropertyInfo {
	mut infos := []GDExtensionPropertyInfo{}
	$for field in T.fields {
		field_name := StringName.new(field.name)
		field_type := get_property_type(typeof(field.typ).name)
		field_class := StringName.new(typeof(field.typ).name.split('.').last())
		hint := String.new('')

		$if field.typ is ToVariant || field.typ is f64 || field.typ is i64 {
			info := GDExtensionPropertyInfo{
				type_:      field_type
				name:       &field_name
				class_name: &field_class
				// TODO
				hint:        .property_hint_none
				hint_string: &hint
				usage:       .property_usage_default
			}
			infos << info
		}
	}
	unsafe {
		*return_count = u32(infos.len)
		if infos.len > 0 {
			return &infos[0]
		} else {
			return nil
		}
	}
}

fn class_free_property_list[T](instance GDExtensionClassInstancePtr, info &GDExtensionPropertyInfo) {
	mut index := 0
	$for field in T.fields {
		$if field.typ is ToVariant || field.typ is f64 || field.typ is i64 {
			unsafe {
				info[index].name.deinit()
				info[index].class_name.deinit()
				info[index].hint_string.deinit()
			}
			index += 1
		}
	}
}

fn class_property_can_revert[T](instance GDExtensionClassInstancePtr, prop_name &StringName) GDExtensionBool {
	return GDExtensionBool(false)
}

fn class_property_get_revert[T](instance GDExtensionClassInstancePtr, prop_name &StringName, variant &Variant) GDExtensionBool {
	return GDExtensionBool(false)
}

fn class_notification[T](instance GDExtensionClassInstancePtr, what int, reversed &GDExtensionBool) {
	// dump('TODO: notification')
}

fn class_to_string[T](instance GDExtensionClassInstancePtr, valid &GDExtensionBool, out &String) {
	dump('TODO: class to string')
	unsafe {
		*valid = GDExtensionBool(true)
		*out = String.new(T.name)
	}
}

fn class_reference[T](instance GDExtensionClassInstancePtr) {
	dump('TODO: ref')
}

fn class_unreference[T](instance GDExtensionClassInstancePtr) {
	dump('TODO: unref')
}

fn class_create_instance1[T](user_data voidptr) &Object {
	return class_create_instance[T](user_data, GDExtensionBool(false))
}

fn class_create_instance[T](user_data voidptr, notify_postinitialize &GDExtensionBool) &Object {
	ud := unsafe { &ClassInfo(user_data) }
	mut t := unsafe { &T(gdf.mem_alloc(sizeof[T]())) }
	// copy default values:
	t_v := T{}
	unsafe { C.memcpy(t, &t_v, sizeof[T]()) }

	mut w := &Object(t)
	w.ptr = gdf.classdb_construct_object2(ud.parent_name)
	gdf.object_set_instance(w.ptr, ud.class_name, t)

	cb := GDExtensionInstanceBindingCallbacks{}
	gdf.object_set_instance_binding(w.ptr, gdf.clp, t, cb)

	$for field in T.fields {
		mut attrs := map[string]VAttribute{}
		for attr in field.attrs {
			parts := attr.split_n(':', 2).map(it.trim_space())
			match parts.len {
				1 {
					attrs[parts[0]] = VAttribute{
						name: parts[0]
					}
				}
				2 {
					attrs[parts[0]] = VAttribute{
						name:    parts[0]
						arg:     parts[1]
						has_arg: true
					}
				}
				else {
					panic('Invalid attribute format')
				}
			}
		}

		if attr := attrs['gd.signal'] {
			$if field.typ is Signal {
				name := if attr.arg == '' { field.name } else { attr.arg }
				t.$(field.name) = Signal.new2(&Object(t), StringName.new(name))
			}
		}
	}
	$if T is IClassInit {
		mut ci := IClassInit(t)
		ci.init()
	}
	return w.ptr
}

fn class_free_instance[T](user_data voidptr, instance GDExtensionClassInstancePtr) {
	unsafe {
		t := &T(instance)
		$if T is IClassDeinit {
			cd := IClassDeinit(t)
			cd.deinit()
		}
		gdf.mem_free(t)
	}
}

fn class_recreate_instance[T](user_data voidptr, object &Object) GDExtensionClassInstancePtr {
	// allocate a new instance of T
	t := unsafe { &T(gdf.mem_alloc(sizeof[T]())) }
	// copy default values
	t_v := T{}
	unsafe { C.memcpy(t, &t_v, sizeof[T]()) }

	// set the instance binding to the existing Godot object
	gdf.object_set_instance(object, StringName.new(T.name), t)

	// set up instance binding callbacks if necessary
	cb := GDExtensionInstanceBindingCallbacks{}
	gdf.object_set_instance_binding(object, gdf.clp, t, cb)

	$if T is IClassInit {
		mut ci := IClassInit(t)
		ci.init()
	}
	return unsafe { GDExtensionClassInstancePtr(t) }
}

fn class_get_virtual_func1[T](user_data voidptr, method_name &StringName) GDExtensionClassCallVirtual {
	return class_get_virtual_func[T](user_data, method_name, 0)
}

fn class_get_virtual_func[T](user_data voidptr, method_name &StringName, hash int) GDExtensionClassCallVirtual {
	ud := unsafe { &ClassInfo(user_data) }
	if method_name.in_dictionary(ud.virtual_methods) {
		r := ud.virtual_methods.index_get_named(method_name) or {
			return GDExtensionClassCallVirtual(unsafe { nil })
		}
		virt := i64_from_variant(r)
		if virt == 0 {
			return GDExtensionClassCallVirtual(unsafe { nil })
		}
		return GDExtensionClassCallVirtual(voidptr(virt))
	}
	return GDExtensionClassCallVirtual(unsafe { nil })
}

pub fn register_class_methods[T](mut ci ClassInfo) {
	$for method in T.methods {
		if 'gd.expose' in method.attrs {
			method_data := method
			method_sn := StringName.new(method.name)

			mut args_info := []GDExtensionPropertyInfo{}
			$for arg in method.params {
				// get proper type for this argument
				arg_type := get_property_type(typeof(arg.typ).name)
				arg_class := StringName.new(typeof(arg.typ).name.split('.').last())
				arg_name := StringName.new(arg.name)
				hint := String.new('')
				defer {
					arg_class.deinit()
					arg_name.deinit()
					hint.deinit()
				}
				info := GDExtensionPropertyInfo{
					type_:      arg_type
					name:       &arg_name
					class_name: &arg_class
					// TODO
					hint:        .property_hint_none
					hint_string: &hint
					usage:       .property_usage_default
				}
				args_info << info
			}
			first_arg := if args_info.len > 0 {
				args_info.first()
			} else {
				GDExtensionPropertyInfo{}
			}

			// TODO: fill out arg and return info
			info := GDExtensionClassMethodInfo{
				name:                   &method_sn
				method_userdata:        &method_data
				call_func:              call_func[T]
				ptrcall_func:           fn (user_data voidptr, instance GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
					dump('ptrcall_func')
				}
				method_flags:           .gdextension_method_flag_normal
				has_return_value:       GDExtensionBool(false)
				return_value_info:      unsafe { nil }
				return_value_metadata:  .gdextension_method_argument_metadata_none
				argument_count:         u32(method.args.len)
				arguments_info:         &first_arg
				arguments_metadata:     &no_meta
				default_argument_count: 0
				default_arguments:      unsafe { nil }
			}
			gdf.classdb_register_extension_class_method(gdf.clp, &ci.class_name, &info)
		}
	}
}

fn get_property_hint(class_name string) PropertyHint {
	return match class_name {
		'PackedScene' { .property_hint_resource_type }
		else { .property_hint_none }
	}
}

pub fn register_class_properties[T](mut ci ClassInfo) {
	mut needs_ready := false

	$for field in T.fields {
		// TODO: abstract.exe
		mut attrs := []VAttribute{}
		for attr in field.attrs {
			parts := attr.split_n(':', 2).map(it.trim_space())
			match parts.len {
				1 {
					attrs << VAttribute{
						name: parts[0]
					}
				}
				2 {
					attrs << VAttribute{
						name:    parts[0]
						arg:     parts[1]
						has_arg: true
					}
				}
				else {
					panic('Invalid attribute format')
				}
			}
		}

		class_name_full := typeof(field.typ).name
		class_name := class_name_full.split('.').last()
		field_type := get_property_type(class_name_full)
		field_data := field

		for attr in attrs {
			match attr.name {
				'gd.export', 'gd.expose' {
					// get proper type for this field
					field_class := StringName.new(class_name)
					field_name := StringName.new(field.name)
					hint := String.new(class_name)
					defer {
						field_class.deinit()
						field_name.deinit()
						hint.deinit()
					}

					usage := if attr.name == 'gd.export' {
						PropertyUsageFlags.property_usage_default
					} else {
						PropertyUsageFlags.property_usage_script_variable
					}

					info := GDExtensionPropertyInfo{
						type_:       field_type
						name:        &field_name
						class_name:  &field_class
						hint:        get_property_hint(class_name)
						hint_string: &hint
						usage:       usage
					}

					getter_name := StringName.new('get_${field.name}')
					getter_info := GDExtensionClassMethodInfo{
						name:                   &getter_name
						method_userdata:        &field_data
						call_func:              property_getter[T]
						ptrcall_func:           fn (user_data voidptr, instance GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
							dump('TODO: ptrcall_func')
						}
						method_flags:           .gdextension_method_flag_normal
						has_return_value:       GDExtensionBool(true)
						return_value_info:      &info
						return_value_metadata:  .gdextension_method_argument_metadata_none
						argument_count:         0
						arguments_info:         unsafe { nil }
						arguments_metadata:     &no_meta
						default_argument_count: 0
						default_arguments:      unsafe { nil }
					}
					gdf.classdb_register_extension_class_method(gdf.clp, &ci.class_name,
						&getter_info)

					// set up setter
					setter_name := StringName.new('set_${field.name}')
					value_sn := StringName.new('value')

					// create setter argument info
					arg_info_size := int(sizeof(GDExtensionPropertyInfo))
					arg_info_ptr := unsafe { &GDExtensionPropertyInfo(C.malloc(arg_info_size)) }
					if arg_info_ptr == unsafe { nil } {
						panic('Failed to allocate memory for arguments_info')
					}
					// we need a mutable version of GDExtensionPropertyInfo to set fields
					// since struct fields are immutable by default
					property_info := GDExtensionPropertyInfo{
						type_:       field_type
						name:        &value_sn
						class_name:  &field_class
						hint:        get_property_hint(class_name)
						hint_string: &hint
						usage:       .property_usage_default
					}

					// copy the property info to our allocated memory
					unsafe { C.memcpy(arg_info_ptr, &property_info, arg_info_size) }

					// register setter method
					setter_info := GDExtensionClassMethodInfo{
						name:                   &setter_name
						method_userdata:        &field_data
						call_func:              property_setter[T]
						ptrcall_func:           fn (user_data voidptr, instance GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
							dump('TODO: ptrcall_func')
						}
						method_flags:           .gdextension_method_flag_normal
						has_return_value:       GDExtensionBool(false)
						return_value_info:      unsafe { nil }
						return_value_metadata:  .gdextension_method_argument_metadata_none
						argument_count:         1
						arguments_info:         arg_info_ptr
						arguments_metadata:     &no_meta
						default_argument_count: 0
						default_arguments:      unsafe { nil }
					}
					gdf.classdb_register_extension_class_method(gdf.clp, &ci.class_name,
						&setter_info)

					// register the property
					gdf.classdb_register_extension_class_property(gdf.clp, &ci.class_name,
						&info, &setter_name, &getter_name)
				}
				'gd.signal' {
					name := if attr.arg == '' { field.name } else { attr.arg }
					field_class := StringName.new(typeof(field.typ).name.split('.').last())
					field_name := StringName.new(field.name)
					hint := String.new('')
					path_name := StringName.new(name)
					defer {
						field_class.deinit()
						field_name.deinit()
						hint.deinit()
						path_name.deinit()
					}
					info := GDExtensionPropertyInfo{
						type_:       field_type
						name:        &field_name
						class_name:  &field_class
						hint:        get_property_hint(class_name)
						hint_string: &hint
						usage:       PropertyUsageFlags.property_usage_default
					}

					// TODO: handle signal arguments
					gdf.classdb_register_extension_class_signal(gdf.clp, &ci.class_name,
						&path_name, &info, 0)
				}
				'gd.onready' {
					needs_ready = true
				}
				else {}
			}
		}
	}
	if needs_ready {
		register_ready[T](mut ci)
	}
}

fn register_ready[T](mut ci ClassInfo) {
	func := call_func_ready[T]
	ivar := i64(func)
	var := i64_to_variant(ivar)
	sn := StringName.new('_ready')
	defer { sn.deinit() }
	ci.virtual_methods.index_set_named(sn, var) or { panic(err) }
}

fn call_func_ready[T](instance GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
	mut inst := unsafe { &T(instance) }

	$for field in T.fields {
		mut attrs := map[string]VAttribute{}
		for attr in field.attrs {
			parts := attr.split_n(':', 2).map(it.trim_space())
			match parts.len {
				1 {
					attrs[parts[0]] = VAttribute{
						name: parts[0]
					}
				}
				2 {
					attrs[parts[0]] = VAttribute{
						name:    parts[0]
						arg:     parts[1]
						has_arg: true
					}
				}
				else {
					panic('Invalid attribute format')
				}
			}
		}

		if attr := attrs['gd.onready'] {
			path := if attr.arg == '' { field.name } else { attr.arg }
			node := (&Node(inst)).get_node_v(path)
			$if field.typ is IClass {
				// TODO: this works for the base custom struct, but not its own onready fields
				println('TODO: onready field: ${T.name}#${field.name} ${typeof(field.typ).name} -> ${node}')
				unsafe {
					// HACK: pointer magicks
					f_ptr := &voidptr(&inst.$(field.name))
					v := gdf.object_get_instance_binding(node.ptr, gdf.clp, nil)
					v_ptr := &voidptr(v)
					*f_ptr = *v_ptr
					_ = f_ptr
				}
			} $else {
				unsafe {
					// HACK: pointer magicks
					f_ptr := &voidptr(&inst.$(field.name))
					v_ptr := &voidptr(&node)
					*f_ptr = *v_ptr
					_ = f_ptr
				}
			}
		}
	}
	$if T is INodeReady {
		mut v_inst := &INodeReady(inst)
		v_inst.ready_()
	}
}

pub struct Class {
	godot_class bool = true
}

pub interface IClass {
	// ptr voidptr
	godot_class bool
}

// Generic getter function for properties.
fn property_getter[T](user_data voidptr, instance GDExtensionClassInstancePtr, args &&Variant, arg_count GDExtensionInt, ret &Variant, err &GDExtensionCallError) {
	mut inst := unsafe { &T(instance) }
	field_data := unsafe { &FieldData(user_data) }
	$for field in T.fields {
		if field.name == field_data.name {
			$if field.typ is bool {
				result := inst.$(field.name)
				ret.from_bool(result)
			} $else $if field.typ is string {
				result := inst.$(field.name)
				str := String.new(result)
				variant := str.to_variant()
				ret.from_variant(variant)
			} $else $if field.typ is int {
				result := inst.$(field.name)
				ret.from_int(result)
			} $else $if field.typ is i64 {
				result := inst.$(field.name)
				ret.from_variant(i64_to_variant(result))
			} $else $if field.typ is f64 {
				result := inst.$(field.name)
				ret.from_variant(f64_to_variant(result))
			} $else $if field.typ is IClass {
				// handle custom class types (ignoring them works for now, AFAICT)
			} $else $if field.typ is ToVariant {
				println('get variant field: ${T.name}#${field.name} ${typeof(field.typ).name}')
				result := inst.$(field.name)
				variant := result.to_variant()
				ret.from_variant(variant)
			} $else {
				dump('unhandled type: ${field.typ}')
			}
		}
	}
}

// Generic setter function for properties.
fn property_setter[T](user_data voidptr, instance GDExtensionClassInstancePtr, args &&Variant, arg_count GDExtensionInt, ret &Variant, err &GDExtensionCallError) {
	mut inst := unsafe { &T(instance) }
	value := unsafe { &args[0] }
	field_data := unsafe { &FieldData(user_data) }
	$for field in T.fields {
		if field.name == field_data.name {
			$if field.typ is bool {
				inst.$(field.name) = value.to_bool()
			} $else $if field.typ is string {
				inst.$(field.name) = value.to_string()
			} $else $if field.typ is int {
				inst.$(field.name) = value.to_int()
			} $else $if field.typ is i64 {
				inst.$(field.name) = i64_from_variant(value)
			} $else $if field.typ is f64 {
				inst.$(field.name) = f64_from_variant(value)
			} $else {
				dump('unhandled type: ${field.typ}')
			}
		}
	}
}
