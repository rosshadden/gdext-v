module gd

pub enum ClassDBAPIType as i64 {
	api_core = 0
	api_editor = 1
	api_extension = 2
	api_editor_extension = 3
	api_none = 4
}

pub struct ClassDB {
	Object
}

pub fn ClassDB.get_singleton() ClassDB {
	sn := StringName.new("ClassDB")
	result := ClassDB{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &ClassDB) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ClassDB) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ClassDB) get_class_list() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ClassDB")
	fnname := StringName.new("get_class_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ClassDB) get_inheriters_from_class(class string) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ClassDB")
	fnname := StringName.new("get_inheriters_from_class")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1761182771)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ClassDB) get_parent_class(class string) string {
	mut result := StringName{}
	classname := StringName.new("ClassDB")
	fnname := StringName.new("get_parent_class")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965194235)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &ClassDB) class_exists(class string) bool {
	mut result := false
	classname := StringName.new("ClassDB")
	fnname := StringName.new("class_exists")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ClassDB) is_parent_class(class string, inherits string) bool {
	mut result := false
	classname := StringName.new("ClassDB")
	fnname := StringName.new("is_parent_class")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(inherits)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ClassDB) can_instantiate(class string) bool {
	mut result := false
	classname := StringName.new("ClassDB")
	fnname := StringName.new("can_instantiate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ClassDB) instantiate(class string) Variant {
	mut result := Variant{}
	classname := StringName.new("ClassDB")
	fnname := StringName.new("instantiate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ClassDB) class_get_api_type(class string) ClassDBAPIType {
	mut result := i64(ClassDBAPIType.api_core)
	classname := StringName.new("ClassDB")
	fnname := StringName.new("class_get_api_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2475317043)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{ClassDBAPIType(result)}
}

pub fn (s &ClassDB) class_has_signal(class string, signal string) bool {
	mut result := false
	classname := StringName.new("ClassDB")
	fnname := StringName.new("class_has_signal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(signal)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ClassDB) class_get_signal(class string, signal string) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("ClassDB")
	fnname := StringName.new("class_get_signal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3061114238)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(signal)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct ClassDB_class_get_signal_list_Cfg {
pub:
	no_inheritance bool
}

pub fn (s &ClassDB) class_get_signal_list(class string, cfg ClassDB_class_get_signal_list_Cfg) Array {
	mut result := Array{}
	classname := StringName.new("ClassDB")
	fnname := StringName.new("class_get_signal_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3504980660)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.no_inheritance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct ClassDB_class_get_property_list_Cfg {
pub:
	no_inheritance bool
}

pub fn (s &ClassDB) class_get_property_list(class string, cfg ClassDB_class_get_property_list_Cfg) Array {
	mut result := Array{}
	classname := StringName.new("ClassDB")
	fnname := StringName.new("class_get_property_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3504980660)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.no_inheritance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ClassDB) class_get_property_getter(class string, property string) string {
	mut result := StringName{}
	classname := StringName.new("ClassDB")
	fnname := StringName.new("class_get_property_getter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3770832642)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(property)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &ClassDB) class_get_property_setter(class string, property string) string {
	mut result := StringName{}
	classname := StringName.new("ClassDB")
	fnname := StringName.new("class_get_property_setter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3770832642)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(property)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &ClassDB) class_get_property(object Object, property string) Variant {
	mut result := Variant{}
	classname := StringName.new("ClassDB")
	fnname := StringName.new("class_get_property")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2498641674)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&object.ptr)
	arg_sn1 := StringName.new(property)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ClassDB) class_set_property(object Object, property string, value Variant) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ClassDB")
	fnname := StringName.new("class_set_property")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1690314931)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&object.ptr)
	arg_sn1 := StringName.new(property)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &ClassDB) class_get_property_default_value(class string, property string) Variant {
	mut result := Variant{}
	classname := StringName.new("ClassDB")
	fnname := StringName.new("class_get_property_default_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2718203076)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(property)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct ClassDB_class_has_method_Cfg {
pub:
	no_inheritance bool
}

pub fn (s &ClassDB) class_has_method(class string, method string, cfg ClassDB_class_has_method_Cfg) bool {
	mut result := false
	classname := StringName.new("ClassDB")
	fnname := StringName.new("class_has_method")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3860701026)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(method)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.no_inheritance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct ClassDB_class_get_method_argument_count_Cfg {
pub:
	no_inheritance bool
}

pub fn (s &ClassDB) class_get_method_argument_count(class string, method string, cfg ClassDB_class_get_method_argument_count_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("ClassDB")
	fnname := StringName.new("class_get_method_argument_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3885694822)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(method)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.no_inheritance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct ClassDB_class_get_method_list_Cfg {
pub:
	no_inheritance bool
}

pub fn (s &ClassDB) class_get_method_list(class string, cfg ClassDB_class_get_method_list_Cfg) Array {
	mut result := Array{}
	classname := StringName.new("ClassDB")
	fnname := StringName.new("class_get_method_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3504980660)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.no_inheritance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ClassDB) class_call_static(class string, method string) Variant {
	mut result := Variant{}
	classname := StringName.new("ClassDB")
	fnname := StringName.new("class_call_static")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3344196419)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(method)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct ClassDB_class_get_integer_constant_list_Cfg {
pub:
	no_inheritance bool
}

pub fn (s &ClassDB) class_get_integer_constant_list(class string, cfg ClassDB_class_get_integer_constant_list_Cfg) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ClassDB")
	fnname := StringName.new("class_get_integer_constant_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3031669221)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.no_inheritance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ClassDB) class_has_integer_constant(class string, name string) bool {
	mut result := false
	classname := StringName.new("ClassDB")
	fnname := StringName.new("class_has_integer_constant")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ClassDB) class_get_integer_constant(class string, name string) i64 {
	mut result := i64(0)
	classname := StringName.new("ClassDB")
	fnname := StringName.new("class_get_integer_constant")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2419549490)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct ClassDB_class_has_enum_Cfg {
pub:
	no_inheritance bool
}

pub fn (s &ClassDB) class_has_enum(class string, name string, cfg ClassDB_class_has_enum_Cfg) bool {
	mut result := false
	classname := StringName.new("ClassDB")
	fnname := StringName.new("class_has_enum")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3860701026)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.no_inheritance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct ClassDB_class_get_enum_list_Cfg {
pub:
	no_inheritance bool
}

pub fn (s &ClassDB) class_get_enum_list(class string, cfg ClassDB_class_get_enum_list_Cfg) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ClassDB")
	fnname := StringName.new("class_get_enum_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3031669221)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.no_inheritance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct ClassDB_class_get_enum_constants_Cfg {
pub:
	no_inheritance bool
}

pub fn (s &ClassDB) class_get_enum_constants(class string, gd_enum string, cfg ClassDB_class_get_enum_constants_Cfg) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ClassDB")
	fnname := StringName.new("class_get_enum_constants")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 661528303)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(gd_enum)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.no_inheritance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct ClassDB_class_get_integer_constant_enum_Cfg {
pub:
	no_inheritance bool
}

pub fn (s &ClassDB) class_get_integer_constant_enum(class string, name string, cfg ClassDB_class_get_integer_constant_enum_Cfg) string {
	mut result := StringName{}
	classname := StringName.new("ClassDB")
	fnname := StringName.new("class_get_integer_constant_enum")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2457504236)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.no_inheritance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct ClassDB_is_class_enum_bitfield_Cfg {
pub:
	no_inheritance bool
}

pub fn (s &ClassDB) is_class_enum_bitfield(class string, gd_enum string, cfg ClassDB_is_class_enum_bitfield_Cfg) bool {
	mut result := false
	classname := StringName.new("ClassDB")
	fnname := StringName.new("is_class_enum_bitfield")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3860701026)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(gd_enum)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.no_inheritance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ClassDB) is_class_enabled(class string) bool {
	mut result := false
	classname := StringName.new("ClassDB")
	fnname := StringName.new("is_class_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}
