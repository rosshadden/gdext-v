module gd

pub struct Material {
	Resource
}

pub fn (s &Material) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Material) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IMaterialGetShaderRid {
mut:
	get_shader_rid_() RID
}

pub fn (s &Material) gd_get_shader_rid() RID {
	mut result := RID{}
	classname := StringName.new("Material")
	fnname := StringName.new("_get_shader_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMaterialGetShaderMode {
mut:
	get_shader_mode_() ShaderMode
}

pub fn (s &Material) gd_get_shader_mode() ShaderMode {
	mut result := i64(ShaderMode.mode_spatial)
	classname := StringName.new("Material")
	fnname := StringName.new("_get_shader_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3392948163)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ShaderMode(result)}
}

pub interface IMaterialCanDoNextPass {
mut:
	can_do_next_pass_() bool
}

pub fn (s &Material) gd_can_do_next_pass() bool {
	mut result := false
	classname := StringName.new("Material")
	fnname := StringName.new("_can_do_next_pass")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMaterialCanUseRenderPriority {
mut:
	can_use_render_priority_() bool
}

pub fn (s &Material) gd_can_use_render_priority() bool {
	mut result := false
	classname := StringName.new("Material")
	fnname := StringName.new("_can_use_render_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Material) set_next_pass(next_pass Material) {
	classname := StringName.new("Material")
	fnname := StringName.new("set_next_pass")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&next_pass.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Material) get_next_pass() Material {
	mut result := Material{}
	classname := StringName.new("Material")
	fnname := StringName.new("get_next_pass")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 5934680)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Material) set_render_priority(priority i64) {
	classname := StringName.new("Material")
	fnname := StringName.new("set_render_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&priority)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Material) get_render_priority() i64 {
	mut result := i64(0)
	classname := StringName.new("Material")
	fnname := StringName.new("get_render_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Material) inspect_native_shader_code() {
	classname := StringName.new("Material")
	fnname := StringName.new("inspect_native_shader_code")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Material) create_placeholder() Resource {
	mut result := Resource{}
	classname := StringName.new("Material")
	fnname := StringName.new("create_placeholder")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 121922552)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
