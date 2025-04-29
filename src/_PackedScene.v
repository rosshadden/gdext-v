module gd

pub enum PackedSceneGenEditState as i64 {
	gen_edit_state_disabled = 0
	gen_edit_state_instance = 1
	gen_edit_state_main = 2
	gen_edit_state_main_inherited = 3
}

pub struct PackedScene {
	Resource
}

pub fn (s &PackedScene) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PackedScene) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &PackedScene) pack(path Node) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("PackedScene")
	fnname := StringName.new("pack")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2584678054)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&path.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct PackedScene_instantiate_Cfg {
pub:
	edit_state PackedSceneGenEditState
}

pub fn (s &PackedScene) instantiate(cfg PackedScene_instantiate_Cfg) Node {
	mut result := Node{}
	classname := StringName.new("PackedScene")
	fnname := StringName.new("instantiate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2628778455)
	mut args := unsafe { [1]voidptr{} }
	i64_edit_state := i64(cfg.edit_state)
	args[0] = unsafe{voidptr(&i64_edit_state)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PackedScene) can_instantiate() bool {
	mut result := false
	classname := StringName.new("PackedScene")
	fnname := StringName.new("can_instantiate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PackedScene) get_state() SceneState {
	mut result := SceneState{}
	classname := StringName.new("PackedScene")
	fnname := StringName.new("get_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3479783971)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
