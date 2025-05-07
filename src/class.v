module gd

pub struct ClassInfo {
mut:
	class_name      StringName
	parent_name     StringName
	virtual_methods Dictionary
}

pub interface ClassInitable {
mut:
	init()
}

pub interface ClassDeinitable {
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
		get_virtual_call_data_func: fn (user_data voidptr, method_name &StringName, hash int) {}
		// call_virtual_with_data_func
		class_userdata: ci
	}

	gdf.classdb_register_extension_class4(gdf.clp, &sn, &pn, &info)
	register_virtual_methods[T](mut ci)
	register_signal_methods[T](mut ci)
	register_class_methods[T](mut ci)
	register_class_properties[T](mut ci)
}

pub fn register_class[T](parent_class string) {
	parts := T.name.split('.')
	register_class_with_name[T](parent_class, parts.last())
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
	'bool': GDExtensionVariantType.type_bool
	'int': GDExtensionVariantType.type_i64
	'i64': GDExtensionVariantType.type_i64
	'f64': GDExtensionVariantType.type_f64
	'string': GDExtensionVariantType.type_string
	'String': GDExtensionVariantType.type_string
	'Vector2': GDExtensionVariantType.type_vector2
	'Vector2i': GDExtensionVariantType.type_vector2i
	'Rect2': GDExtensionVariantType.type_rect2
	'Rect2i': GDExtensionVariantType.type_rect2i
	'Vector3': GDExtensionVariantType.type_vector3
	'Vector3i': GDExtensionVariantType.type_vector3i
	'Transform2D': GDExtensionVariantType.type_transform2d
	'Vector4': GDExtensionVariantType.type_vector4
	'Vector4i': GDExtensionVariantType.type_vector4i
	'Plane': GDExtensionVariantType.type_plane
	'Quaternion': GDExtensionVariantType.type_quaternion
	'AABB': GDExtensionVariantType.type_aabb
	'Basis': GDExtensionVariantType.type_basis
	'Transform3D': GDExtensionVariantType.type_transform3d
	'Projection': GDExtensionVariantType.type_projection
	'Color': GDExtensionVariantType.type_color
	'StringName': GDExtensionVariantType.type_stringname
	'NodePath': GDExtensionVariantType.type_nodepath
	'RID': GDExtensionVariantType.type_rid
	'Object': GDExtensionVariantType.type_object
	'Callable': GDExtensionVariantType.type_callable
	'Signal': GDExtensionVariantType.type_signal
	'Dictionary': GDExtensionVariantType.type_dictionary
	'Array': GDExtensionVariantType.type_array
	'PackedByteArray': GDExtensionVariantType.type_packedbytearray
	'PackedInt32Array': GDExtensionVariantType.type_packedint32array
	'PackedInt64Array': GDExtensionVariantType.type_packedint64array
	'PackedFloat32Array': GDExtensionVariantType.type_packedfloat32array
	'PackedFloat64Array': GDExtensionVariantType.type_packedfloat64array
	'PackedStringArray': GDExtensionVariantType.type_packedstringarray
	'PackedVector2Array': GDExtensionVariantType.type_packedvector2array
	'PackedVector3Array': GDExtensionVariantType.type_packedvector3array
	'PackedColorArray': GDExtensionVariantType.type_packedcolorarray
	'PackedVector4Array': GDExtensionVariantType.type_packedvector4array
}

fn get_property_type(typ string) GDExtensionVariantType {
	return prop_map[typ] or {
		return .type_nil
	}
}

fn class_get_property_list[T](instance GDExtensionClassInstancePtr, return_count &u32) &GDExtensionPropertyInfo {
	mut infos := []GDExtensionPropertyInfo{}
	$for field in T.fields {
		$if field.typ is ToVariant {
			field_name := StringName.new(field.name)
			class_name := StringName.new(T.name)
			hint := String.new('hint_string')

			type_ := get_property_type(typeof(field.typ).name)

			info := GDExtensionPropertyInfo{
				type_:       type_
				name:        &field_name
				class_name:  &class_name
				hint:        .property_hint_none
				hint_string: &hint
				usage:       .property_usage_default
			}
			infos << info
		} $else $if field.typ is f64 {
			field_name := StringName.new(field.name)
			class_name := StringName.new(T.name)
			hint := unsafe { nil }
			info := GDExtensionPropertyInfo{
				type_:       .type_f64
				name:        &field_name
				class_name:  &class_name
				hint:        .property_hint_none
				hint_string: &hint
				usage:       .property_usage_default
			}
			infos << info
		} $else $if field.typ is i64 {
			field_name := StringName.new(field.name)
			class_name := StringName.new(T.name)
			hint := unsafe { nil }
			info := GDExtensionPropertyInfo{
				type_:       .type_i64
				name:        &field_name
				class_name:  &class_name
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
	unsafe {
		$for field in T.fields {
			$if field.typ is ToVariant {
				info[index].name.deinit()
				info[index].class_name.deinit()
				info[index].hint_string.deinit()
				index += 1
			}
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
	// println('TODO: notification')
}

fn class_to_string[T](instance GDExtensionClassInstancePtr, valid &GDExtensionBool, out &String) {
	println('class to string')
	unsafe {
		*valid = GDExtensionBool(true)
		*out = String.new(T.name)
	}
}

fn class_reference[T](instance GDExtensionClassInstancePtr) {
	println('TODO: ref')
}

fn class_unreference[T](instance GDExtensionClassInstancePtr) {
	println('TODO: unref')
}

fn class_create_instance1[T](user_data voidptr) &Object {
	return class_create_instance[T](user_data, GDExtensionBool(false))
}

fn class_create_instance[T](user_data voidptr, notify_postinitialize &GDExtensionBool) &Object {
	ud := unsafe { &ClassInfo(user_data) }
	t := unsafe { &T(gdf.mem_alloc(sizeof[T]())) }
	// copy default values:
	t_v := T{}
	unsafe { C.memcpy(t, &t_v, sizeof[T]()) }

	mut w := &Object(t)
	w.ptr = gdf.classdb_construct_object2(ud.parent_name)
	gdf.object_set_instance(w.ptr, ud.class_name, t)

	cb := GDExtensionInstanceBindingCallbacks{}
	gdf.object_set_instance_binding(w.ptr, gdf.clp, t, cb)

	$if T is ClassInitable {
		mut ci := ClassInitable(t)
		ci.init()
	}
	return w.ptr
}

fn class_free_instance[T](user_data voidptr, instance GDExtensionClassInstancePtr) {
	unsafe {
		t := &T(instance)
		$if T is ClassDeinitable {
			mut cd := ClassDeinitable(t)
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

	// call init if T implements ClassInitable
	$if T is ClassInitable {
		mut ci := ClassInitable(t)
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
		return GDExtensionClassCallVirtual(unsafe { voidptr(virt) })
	}
	return GDExtensionClassCallVirtual(unsafe { nil })
}

pub fn register_class_methods[T](mut ci ClassInfo) {
	$for method in T.methods {
		if 'gd.expose' in method.attrs {
			method_data := method
			method_sn := StringName.new(method.name)
			info := GDExtensionClassMethodInfo{
				name:                   &method_sn
				method_userdata:        &method_data
				call_func:              call_func[T]
				ptrcall_func:           fn (user_data voidptr, instance GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
					dump('ptrcall_func')
				}
				method_flags:           1
				has_return_value:       GDExtensionBool(false)
				return_value_info:      unsafe { nil }
				return_value_metadata:  .gdextension_method_argument_metadata_none
				argument_count:         0
				arguments_info:         unsafe { nil }
				arguments_metadata:     unsafe { nil }
				default_argument_count: 0
				default_arguments:      unsafe { nil }
			}
			gdf.classdb_register_extension_class_method(gdf.clp, &ci.class_name, &info)
		}
	}
}

pub fn register_class_properties[T](mut ci ClassInfo) {
	$for field in T.fields {
		if 'gd.export' in field.attrs || 'gd.expose' in field.attrs {
			is_export := 'gd.export' in field.attrs
			field_name := StringName.new(field.name)
			setter_name := unsafe { nil }
			getter_name := unsafe { nil }
			hint := String.new('hint_string')
			usage := if is_export {
				PropertyUsageFlags.property_usage_default
			} else {
				PropertyUsageFlags.property_usage_script_variable
			}
			info := GDExtensionPropertyInfo{
				type_:       get_property_type(typeof(field.typ).name)
				name:        &field_name
				class_name:  &ci.class_name
				hint:        .property_hint_none
				hint_string: &hint
				usage:       usage
			}
			gdf.classdb_register_extension_class_property(gdf.clp, &ci.class_name, &info,
				&setter_name, &getter_name)
		}
	}
}
