module gdext

import gd

const no_meta = gd.GDExtensionClassMethodArgumentMetadata.gdextension_method_argument_metadata_none

pub struct ClassInfo {
mut:
	name            string
	class_name      gd.StringName
	parent_name     gd.StringName
	virtual_methods gd.Dictionary
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
	sn := gd.StringName.new(class_name)
	pn := gd.StringName.new(parent_class)

	mut ci := unsafe { &ClassInfo(gdf.mem_alloc(sizeof[ClassInfo]())) }
	// copy default values:
	ci_v := ClassInfo{}
	unsafe { C.memcpy(ci, &ci_v, sizeof[ClassInfo]()) }
	ci.name = T.name
	ci.class_name = sn
	ci.parent_name = pn
	ci.virtual_methods = gd.Dictionary.new0()

	// @tool support
	mut is_runtime := true
	$for attr in T.attributes {
		$if attr.name == 'gd.tool' {
			is_runtime = false
		}
	}
	info := gd.GDExtensionClassCreationInfo4{
		is_virtual:               gd.GDExtensionBool(false)
		is_abstract:              gd.GDExtensionBool(false)
		is_exposed:               gd.GDExtensionBool(true)
		is_runtime:               gd.GDExtensionBool(is_runtime)
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
		get_virtual_call_data_func: fn (user_data voidptr, method_name &gd.StringName, hash int) {
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

fn class_set_func[T](instance gd.GDExtensionClassInstancePtr, name &gd.StringName, variant &gd.Variant) gd.GDExtensionBool {
	vname := name.to_v()
	mut handled := false
	$for field in T.fields {
		if field.name == vname {
			$if field.typ is gd.FromVariant {
				t := unsafe { &T(instance) }
				mut var := gd.FromVariant(t.$(field.name))
				var.from_variant(variant)
				handled = true
			} $else $if field.typ is f64 {
				mut t := unsafe { &T(instance) }
				t.$(field.name) = gd.f64_from_variant(variant)
				handled = true
			} $else $if field.typ is i64 {
				mut t := unsafe { &T(instance) }
				t.$(field.name) = gd.i64_from_variant(variant)
				handled = true
			}
		}
	}
	return gd.GDExtensionBool(handled)
}

fn class_get_func[T](instance gd.GDExtensionClassInstancePtr, name &gd.StringName, mut variant gd.Variant) gd.GDExtensionBool {
	vname := name.to_v()
	mut handled := false
	$for field in T.fields {
		if field.name == vname {
			$if field.typ is gd.ToVariant {
				t := unsafe { &T(instance) }
				var := gd.ToVariant(t.$(field.name))
				variant = var.to_variant()
				handled = true
			} $else $if field.typ is f64 {
				t := unsafe { &T(instance) }
				variant = gd.f64_to_variant(t.$(field.name))
				handled = true
			} $else $if field.typ is i64 {
				t := unsafe { &T(instance) }
				variant = gd.i64_to_variant(t.$(field.name))
				handled = true
			}
		}
	}
	return gd.GDExtensionBool(handled)
}

const prop_map = {
	'bool':               gd.GDExtensionVariantType.type_bool
	'int':                gd.GDExtensionVariantType.type_i64
	'i64':                gd.GDExtensionVariantType.type_i64
	'f64':                gd.GDExtensionVariantType.type_f64
	'string':             gd.GDExtensionVariantType.type_string
	'String':             gd.GDExtensionVariantType.type_string
	'Vector2':            gd.GDExtensionVariantType.type_vector2
	'Vector2i':           gd.GDExtensionVariantType.type_vector2i
	'Rect2':              gd.GDExtensionVariantType.type_rect2
	'Rect2i':             gd.GDExtensionVariantType.type_rect2i
	'Vector3':            gd.GDExtensionVariantType.type_vector3
	'Vector3i':           gd.GDExtensionVariantType.type_vector3i
	'Transform2D':        gd.GDExtensionVariantType.type_transform2d
	'Vector4':            gd.GDExtensionVariantType.type_vector4
	'Vector4i':           gd.GDExtensionVariantType.type_vector4i
	'Plane':              gd.GDExtensionVariantType.type_plane
	'Quaternion':         gd.GDExtensionVariantType.type_quaternion
	'AABB':               gd.GDExtensionVariantType.type_aabb
	'Basis':              gd.GDExtensionVariantType.type_basis
	'Transform3D':        gd.GDExtensionVariantType.type_transform3d
	'Projection':         gd.GDExtensionVariantType.type_projection
	'Color':              gd.GDExtensionVariantType.type_color
	'StringName':         gd.GDExtensionVariantType.type_stringname
	'NodePath':           gd.GDExtensionVariantType.type_nodepath
	'RID':                gd.GDExtensionVariantType.type_rid
	'Object':             gd.GDExtensionVariantType.type_object
	'Callable':           gd.GDExtensionVariantType.type_callable
	'Signal':             gd.GDExtensionVariantType.type_signal
	'Dictionary':         gd.GDExtensionVariantType.type_dictionary
	'Array':              gd.GDExtensionVariantType.type_array
	'PackedByteArray':    gd.GDExtensionVariantType.type_packedbytearray
	'PackedInt32Array':   gd.GDExtensionVariantType.type_packedint32array
	'PackedInt64Array':   gd.GDExtensionVariantType.type_packedint64array
	'PackedFloat32Array': gd.GDExtensionVariantType.type_packedfloat32array
	'PackedFloat64Array': gd.GDExtensionVariantType.type_packedfloat64array
	'PackedStringArray':  gd.GDExtensionVariantType.type_packedstringarray
	'PackedVector2Array': gd.GDExtensionVariantType.type_packedvector2array
	'PackedVector3Array': gd.GDExtensionVariantType.type_packedvector3array
	'PackedColorArray':   gd.GDExtensionVariantType.type_packedcolorarray
	'PackedVector4Array': gd.GDExtensionVariantType.type_packedvector4array
}

fn get_property_type(typ string) gd.GDExtensionVariantType {
	// TODO: make better
	return prop_map[typ.split('.').last()] or { return .type_object }
}

fn class_get_property_list[T](instance gd.GDExtensionClassInstancePtr, return_count &u32) &gd.GDExtensionPropertyInfo {
	mut infos := []gd.GDExtensionPropertyInfo{}
	$for field in T.fields {
		field_name_sn := gd.StringName.new(field.name)
		field_type := get_property_type(typeof(field.typ).name)
		field_class_sn := gd.StringName.new(typeof(field.typ).name.split('.').last())
		hint := gd.String.new('')

		$if field.typ is gd.ToVariant || field.typ is f64 || field.typ is i64 {
			info := gd.GDExtensionPropertyInfo{
				type_:      field_type
				name:       &field_name_sn
				class_name: &field_class_sn
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

fn class_free_property_list[T](instance gd.GDExtensionClassInstancePtr, info &gd.GDExtensionPropertyInfo) {
	mut index := 0
	$for field in T.fields {
		$if field.typ is gd.ToVariant || field.typ is f64 || field.typ is i64 {
			unsafe {
				info[index].name.deinit()
				info[index].class_name.deinit()
				info[index].hint_string.deinit()
			}
			index += 1
		}
	}
}

fn class_property_can_revert[T](instance gd.GDExtensionClassInstancePtr, prop_name &gd.StringName) gd.GDExtensionBool {
	return gd.GDExtensionBool(false)
}

fn class_property_get_revert[T](instance gd.GDExtensionClassInstancePtr, prop_name &gd.StringName, variant &gd.Variant) gd.GDExtensionBool {
	return gd.GDExtensionBool(false)
}

fn class_notification[T](instance gd.GDExtensionClassInstancePtr, what int, reversed &gd.GDExtensionBool) {
	// dump('TODO: notification')
}

fn class_to_string[T](instance gd.GDExtensionClassInstancePtr, valid &gd.GDExtensionBool, out &gd.String) {
	dump('TODO: class to string')
	unsafe {
		*valid = gd.GDExtensionBool(true)
		*out = gd.String.new(T.name)
	}
}

fn class_reference[T](instance gd.GDExtensionClassInstancePtr) {
	dump('TODO: ref')
}

fn class_unreference[T](instance gd.GDExtensionClassInstancePtr) {
	dump('TODO: unref')
}

fn class_create_instance1[T](user_data voidptr) &gd.Object {
	return class_create_instance[T](user_data, gd.GDExtensionBool(false))
}

fn class_create_instance[T](user_data voidptr, notify_postinitialize &gd.GDExtensionBool) &gd.Object {
	ud := unsafe { &ClassInfo(user_data) }
	mut t := unsafe { &T(gdf.mem_alloc(sizeof[T]())) }
	// copy default values:
	t_v := T{}
	unsafe { C.memcpy(t, &t_v, sizeof[T]()) }

	mut w := &gd.Object(t)
	w.ptr = gdf.classdb_construct_object2(ud.parent_name)
	gdf.object_set_instance(w.ptr, ud.class_name, t)

	cb := gd.GDExtensionInstanceBindingCallbacks{}
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
			$if field.typ is gd.Signal {
				name := if attr.arg == '' { field.name } else { attr.arg }
				t.$(field.name) = gd.Signal.new2(&gd.Object(t), gd.StringName.new(name))
			}
		}
	}
	$if T is IClassInit {
		mut ci := IClassInit(t)
		ci.init()
	}
	return w.ptr
}

fn class_free_instance[T](user_data voidptr, instance gd.GDExtensionClassInstancePtr) {
	unsafe {
		t := &T(instance)
		$if T is IClassDeinit {
			cd := IClassDeinit(t)
			cd.deinit()
		}
		gdf.mem_free(t)
	}
}

fn class_recreate_instance[T](user_data voidptr, object &gd.Object) gd.GDExtensionClassInstancePtr {
	// allocate a new instance of T
	t := unsafe { &T(gdf.mem_alloc(sizeof[T]())) }
	// copy default values
	t_v := T{}
	unsafe { C.memcpy(t, &t_v, sizeof[T]()) }

	// set the instance binding to the existing Godot object
	gdf.object_set_instance(object, gd.StringName.new(T.name), t)

	// set up instance binding callbacks if necessary
	cb := gd.GDExtensionInstanceBindingCallbacks{}
	gdf.object_set_instance_binding(object, gdf.clp, t, cb)

	$if T is IClassInit {
		mut ci := IClassInit(t)
		ci.init()
	}
	return unsafe { gd.GDExtensionClassInstancePtr(t) }
}

fn class_get_virtual_func1[T](user_data voidptr, method_name &gd.StringName) gd.GDExtensionClassCallVirtual {
	return class_get_virtual_func[T](user_data, method_name, 0)
}

fn class_get_virtual_func[T](user_data voidptr, method_name &gd.StringName, hash int) gd.GDExtensionClassCallVirtual {
	ud := unsafe { &ClassInfo(user_data) }
	if method_name.in_dictionary(ud.virtual_methods) {
		r := ud.virtual_methods.index_get_named(method_name) or {
			return gd.GDExtensionClassCallVirtual(unsafe { nil })
		}
		virt := gd.i64_from_variant(r)
		if virt == 0 {
			return gd.GDExtensionClassCallVirtual(unsafe { nil })
		}
		return gd.GDExtensionClassCallVirtual(voidptr(virt))
	}
	return gd.GDExtensionClassCallVirtual(unsafe { nil })
}

pub fn register_class_methods[T](mut ci ClassInfo) {
	$for method in T.methods {
		if 'gd.expose' in method.attrs {
			method_data := method
			method_sn := gd.StringName.new(method.name)

			mut args_info := []gd.GDExtensionPropertyInfo{}
			$for arg in method.params {
				// get proper type for this argument
				arg_type := get_property_type(typeof(arg.typ).name)
				arg_class := gd.StringName.new(typeof(arg.typ).name.split('.').last())
				arg_name := gd.StringName.new(arg.name)
				hint := gd.String.new('')
				defer {
					arg_class.deinit()
					arg_name.deinit()
					hint.deinit()
				}
				info := gd.GDExtensionPropertyInfo{
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
				gd.GDExtensionPropertyInfo{}
			}

			// TODO: fill out arg and return info
			info := gd.GDExtensionClassMethodInfo{
				name:                   &method_sn
				method_userdata:        &method_data
				call_func:              call_func[T]
				ptrcall_func:           fn (user_data voidptr, instance gd.GDExtensionClassInstancePtr, args &gd.GDExtensionConstTypePtr, ret gd.GDExtensionTypePtr) {
					dump('ptrcall_func')
				}
				method_flags:           .gdextension_method_flag_normal
				has_return_value:       gd.GDExtensionBool(false)
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

fn get_property_hint(class_name string) gd.PropertyHint {
	return match class_name {
		'PackedScene' { .property_hint_resource_type }
		'Node', 'Node2D', 'Node3D' { .property_hint_node_type }
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

		field_class_full := typeof(field.typ).name
		field_class := field_class_full.split('.').last()
		field_type := get_property_type(field_class_full)
		field_data := field

		for attr in attrs {
			match attr.name {
				'gd.export', 'gd.expose' {
					// get proper type for this field
					field_name_sn := gd.StringName.new(field.name)
					field_class_sn := gd.StringName.new(field_class)
					empty_sn := gd.StringName.new('')
					empty_s := gd.String.new('')
					hint := gd.String.new(field_class)
					defer {
						empty_sn.deinit()
						empty_s.deinit()
						field_class_sn.deinit()
						field_name_sn.deinit()
						hint.deinit()
					}

					usage := if attr.name == 'gd.export' {
						gd.PropertyUsageFlags.property_usage_default
					} else {
						gd.PropertyUsageFlags.property_usage_script_variable
					}

					info := gd.GDExtensionPropertyInfo{
						type_:       field_type
						name:        &field_name_sn
						class_name:  if field_type == .type_object {
							&field_class_sn
						} else {
							&empty_sn
						}
						hint:        get_property_hint(field_class)
						hint_string: &hint
						usage:       usage
					}

					getter_name := gd.StringName.new('get_${field.name}')
					getter_info := gd.GDExtensionClassMethodInfo{
						name:                   &getter_name
						method_userdata:        &field_data
						call_func:              property_getter[T]
						ptrcall_func:           fn (user_data voidptr, instance gd.GDExtensionClassInstancePtr, args &gd.GDExtensionConstTypePtr, ret gd.GDExtensionTypePtr) {
							dump('TODO: ptrcall_func')
						}
						method_flags:           .gdextension_method_flag_normal
						has_return_value:       gd.GDExtensionBool(true)
						return_value_info:      &info
						return_value_metadata:  .gdextension_method_argument_metadata_none
						argument_count:         0
						arguments_info:         &gd.GDExtensionPropertyInfo{}
						arguments_metadata:     &no_meta
						default_argument_count: 0
						default_arguments:      unsafe { nil }
					}
					gdf.classdb_register_extension_class_method(gdf.clp, &ci.class_name,
						&getter_info)

					// register setter method
					setter_name := gd.StringName.new('set_${field.name}')
					setter_info := gd.GDExtensionClassMethodInfo{
						name:                   &setter_name
						method_userdata:        &field_data
						call_func:              property_setter[T]
						ptrcall_func:           fn (user_data voidptr, instance gd.GDExtensionClassInstancePtr, args &gd.GDExtensionConstTypePtr, ret gd.GDExtensionTypePtr) {
							dump('TODO: ptrcall_func')
						}
						method_flags:           .gdextension_method_flag_normal
						has_return_value:       gd.GDExtensionBool(false)
						return_value_info:      unsafe { nil }
						return_value_metadata:  .gdextension_method_argument_metadata_none
						argument_count:         1
						arguments_info:         &info
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
					empty_sn := gd.StringName.new('')
					name := if attr.arg == '' { field.name } else { attr.arg }
					field_name_sn := gd.StringName.new(field.name)
					hint := gd.String.new('Signal')
					path_name := gd.StringName.new(name)
					defer {
						empty_sn.deinit()
						field_name_sn.deinit()
						hint.deinit()
						path_name.deinit()
					}
					info := gd.GDExtensionPropertyInfo{
						type_:       field_type
						name:        &field_name_sn
						class_name:  &empty_sn
						hint:        get_property_hint(field_class)
						hint_string: &hint
						usage:       gd.PropertyUsageFlags.property_usage_default
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
	var := gd.i64_to_variant(ivar)
	sn := gd.StringName.new('_ready')
	defer { sn.deinit() }
	ci.virtual_methods.index_set_named(sn, var) or { panic(err) }
}

fn call_func_ready[T](instance gd.GDExtensionClassInstancePtr, args &gd.GDExtensionConstTypePtr, ret gd.GDExtensionTypePtr) {
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
			node := (&gd.Node(inst)).get_node_v(path)
			$if field.typ is gd.IClass {
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
	$if T is gd.INodeReady {
		mut v_inst := &gd.INodeReady(inst)
		v_inst.ready_()
	}
}

// Generic getter function for properties.
fn property_getter[T](user_data voidptr, instance gd.GDExtensionClassInstancePtr, args &&gd.Variant, arg_count gd.GDExtensionInt, ret &gd.Variant, err &gd.GDExtensionCallError) {
	mut inst := unsafe { &T(instance) }
	field_data := unsafe { &FieldData(user_data) }
	$for field in T.fields {
		if field.name == field_data.name {
			$if field.typ is bool {
				result := inst.$(field.name)
				ret.from_bool(result)
			} $else $if field.typ is string {
				result := inst.$(field.name)
				str := gd.String.new(result)
				variant := str.to_variant()
				ret.from_variant(variant)
			} $else $if field.typ is int {
				result := inst.$(field.name)
				ret.from_int(result)
			} $else $if field.typ is i64 {
				result := inst.$(field.name)
				ret.from_variant(gd.i64_to_variant(result))
			} $else $if field.typ is f64 {
				result := inst.$(field.name)
				ret.from_variant(gd.f64_to_variant(result))
			} $else $if field.typ is gd.IClass {
				// handle custom class types (ignoring them works for now, AFAICT)
			} $else $if field.typ is gd.ToVariant {
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
fn property_setter[T](user_data voidptr, instance gd.GDExtensionClassInstancePtr, args &&gd.Variant, arg_count gd.GDExtensionInt, ret &gd.Variant, err &gd.GDExtensionCallError) {
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
				inst.$(field.name) = gd.i64_from_variant(value)
			} $else $if field.typ is f64 {
				inst.$(field.name) = gd.f64_from_variant(value)
			} $else {
				dump('unhandled type: ${field.typ}')
			}
		}
	}
}
