module gd

pub struct EditorNode3DGizmoPlugin {
	Resource
}

pub fn (s &EditorNode3DGizmoPlugin) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorNode3DGizmoPlugin) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IEditorNode3DGizmoPluginHasGizmo {
mut:
	has_gizmo_(for_node_3d Node3D) bool
}

pub fn (s &EditorNode3DGizmoPlugin) gd_has_gizmo(for_node_3d Node3D) bool {
	mut result := false
	classname := StringName.new("EditorNode3DGizmoPlugin")
	fnname := StringName.new("_has_gizmo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1905827158)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&for_node_3d.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorNode3DGizmoPluginCreateGizmo {
mut:
	create_gizmo_(for_node_3d Node3D) EditorNode3DGizmo
}

pub fn (s &EditorNode3DGizmoPlugin) gd_create_gizmo(for_node_3d Node3D) EditorNode3DGizmo {
	mut result := EditorNode3DGizmo{}
	classname := StringName.new("EditorNode3DGizmoPlugin")
	fnname := StringName.new("_create_gizmo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1418965287)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&for_node_3d.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorNode3DGizmoPluginGetGizmoName {
mut:
	get_gizmo_name_() String
}

pub fn (s &EditorNode3DGizmoPlugin) gd_get_gizmo_name() string {
	mut result := String{}
	classname := StringName.new("EditorNode3DGizmoPlugin")
	fnname := StringName.new("_get_gizmo_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorNode3DGizmoPluginGetPriority {
mut:
	get_priority_() i64
}

pub fn (s &EditorNode3DGizmoPlugin) gd_get_priority() i64 {
	mut result := i64(0)
	classname := StringName.new("EditorNode3DGizmoPlugin")
	fnname := StringName.new("_get_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorNode3DGizmoPluginCanBeHidden {
mut:
	can_be_hidden_() bool
}

pub fn (s &EditorNode3DGizmoPlugin) gd_can_be_hidden() bool {
	mut result := false
	classname := StringName.new("EditorNode3DGizmoPlugin")
	fnname := StringName.new("_can_be_hidden")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorNode3DGizmoPluginIsSelectableWhenHidden {
mut:
	is_selectable_when_hidden_() bool
}

pub fn (s &EditorNode3DGizmoPlugin) gd_is_selectable_when_hidden() bool {
	mut result := false
	classname := StringName.new("EditorNode3DGizmoPlugin")
	fnname := StringName.new("_is_selectable_when_hidden")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorNode3DGizmoPluginRedraw {
mut:
	redraw_(gizmo EditorNode3DGizmo)
}

pub fn (s &EditorNode3DGizmoPlugin) gd_redraw(gizmo EditorNode3DGizmo) {
	classname := StringName.new("EditorNode3DGizmoPlugin")
	fnname := StringName.new("_redraw")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 173330131)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&gizmo.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorNode3DGizmoPluginGetHandleName {
mut:
	get_handle_name_(gizmo EditorNode3DGizmo, handle_id i64, secondary bool) String
}

pub fn (s &EditorNode3DGizmoPlugin) gd_get_handle_name(gizmo EditorNode3DGizmo, handle_id i64, secondary bool) string {
	mut result := String{}
	classname := StringName.new("EditorNode3DGizmoPlugin")
	fnname := StringName.new("_get_handle_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3888674840)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&gizmo.ptr)
	args[1] = unsafe{voidptr(&handle_id)}
	args[2] = unsafe{voidptr(&secondary)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorNode3DGizmoPluginIsHandleHighlighted {
mut:
	is_handle_highlighted_(gizmo EditorNode3DGizmo, handle_id i64, secondary bool) bool
}

pub fn (s &EditorNode3DGizmoPlugin) gd_is_handle_highlighted(gizmo EditorNode3DGizmo, handle_id i64, secondary bool) bool {
	mut result := false
	classname := StringName.new("EditorNode3DGizmoPlugin")
	fnname := StringName.new("_is_handle_highlighted")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2665780718)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&gizmo.ptr)
	args[1] = unsafe{voidptr(&handle_id)}
	args[2] = unsafe{voidptr(&secondary)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorNode3DGizmoPluginGetHandleValue {
mut:
	get_handle_value_(gizmo EditorNode3DGizmo, handle_id i64, secondary bool) Variant
}

pub fn (s &EditorNode3DGizmoPlugin) gd_get_handle_value(gizmo EditorNode3DGizmo, handle_id i64, secondary bool) Variant {
	mut result := Variant{}
	classname := StringName.new("EditorNode3DGizmoPlugin")
	fnname := StringName.new("_get_handle_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2887724832)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&gizmo.ptr)
	args[1] = unsafe{voidptr(&handle_id)}
	args[2] = unsafe{voidptr(&secondary)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorNode3DGizmoPluginBeginHandleAction {
mut:
	begin_handle_action_(gizmo EditorNode3DGizmo, handle_id i64, secondary bool)
}

pub fn (s &EditorNode3DGizmoPlugin) gd_begin_handle_action(gizmo EditorNode3DGizmo, handle_id i64, secondary bool) {
	classname := StringName.new("EditorNode3DGizmoPlugin")
	fnname := StringName.new("_begin_handle_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3363704593)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&gizmo.ptr)
	args[1] = unsafe{voidptr(&handle_id)}
	args[2] = unsafe{voidptr(&secondary)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorNode3DGizmoPluginSetHandle {
mut:
	set_handle_(gizmo EditorNode3DGizmo, handle_id i64, secondary bool, camera Camera3D, screen_pos Vector2)
}

pub fn (s &EditorNode3DGizmoPlugin) gd_set_handle(gizmo EditorNode3DGizmo, handle_id i64, secondary bool, camera Camera3D, screen_pos Vector2) {
	classname := StringName.new("EditorNode3DGizmoPlugin")
	fnname := StringName.new("_set_handle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1249646868)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&gizmo.ptr)
	args[1] = unsafe{voidptr(&handle_id)}
	args[2] = unsafe{voidptr(&secondary)}
	args[3] = voidptr(&camera.ptr)
	args[4] = unsafe{voidptr(&screen_pos)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorNode3DGizmoPluginCommitHandle {
mut:
	commit_handle_(gizmo EditorNode3DGizmo, handle_id i64, secondary bool, restore Variant, cancel bool)
}

pub fn (s &EditorNode3DGizmoPlugin) gd_commit_handle(gizmo EditorNode3DGizmo, handle_id i64, secondary bool, restore Variant, cancel bool) {
	classname := StringName.new("EditorNode3DGizmoPlugin")
	fnname := StringName.new("_commit_handle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1939863962)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&gizmo.ptr)
	args[1] = unsafe{voidptr(&handle_id)}
	args[2] = unsafe{voidptr(&secondary)}
	args[3] = unsafe{voidptr(&restore)}
	args[4] = unsafe{voidptr(&cancel)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorNode3DGizmoPluginSubgizmosIntersectRay {
mut:
	subgizmos_intersect_ray_(gizmo EditorNode3DGizmo, camera Camera3D, screen_pos Vector2) i64
}

pub fn (s &EditorNode3DGizmoPlugin) gd_subgizmos_intersect_ray(gizmo EditorNode3DGizmo, camera Camera3D, screen_pos Vector2) i64 {
	mut result := i64(0)
	classname := StringName.new("EditorNode3DGizmoPlugin")
	fnname := StringName.new("_subgizmos_intersect_ray")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1781916302)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&gizmo.ptr)
	args[1] = voidptr(&camera.ptr)
	args[2] = unsafe{voidptr(&screen_pos)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorNode3DGizmoPluginSubgizmosIntersectFrustum {
mut:
	subgizmos_intersect_frustum_(gizmo EditorNode3DGizmo, camera Camera3D, frustum_planes Array) PackedInt32Array
}

pub fn (s &EditorNode3DGizmoPlugin) gd_subgizmos_intersect_frustum(gizmo EditorNode3DGizmo, camera Camera3D, frustum_planes Array) PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("EditorNode3DGizmoPlugin")
	fnname := StringName.new("_subgizmos_intersect_frustum")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3514748524)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&gizmo.ptr)
	args[1] = voidptr(&camera.ptr)
	args[2] = unsafe{voidptr(&frustum_planes)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorNode3DGizmoPluginGetSubgizmoTransform {
mut:
	get_subgizmo_transform_(gizmo EditorNode3DGizmo, subgizmo_id i64) Transform3D
}

pub fn (s &EditorNode3DGizmoPlugin) gd_get_subgizmo_transform(gizmo EditorNode3DGizmo, subgizmo_id i64) Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("EditorNode3DGizmoPlugin")
	fnname := StringName.new("_get_subgizmo_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3700343508)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&gizmo.ptr)
	args[1] = unsafe{voidptr(&subgizmo_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorNode3DGizmoPluginSetSubgizmoTransform {
mut:
	set_subgizmo_transform_(gizmo EditorNode3DGizmo, subgizmo_id i64, transform Transform3D)
}

pub fn (s &EditorNode3DGizmoPlugin) gd_set_subgizmo_transform(gizmo EditorNode3DGizmo, subgizmo_id i64, transform Transform3D) {
	classname := StringName.new("EditorNode3DGizmoPlugin")
	fnname := StringName.new("_set_subgizmo_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2435388792)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&gizmo.ptr)
	args[1] = unsafe{voidptr(&subgizmo_id)}
	args[2] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorNode3DGizmoPluginCommitSubgizmos {
mut:
	commit_subgizmos_(gizmo EditorNode3DGizmo, ids PackedInt32Array, restores Array, cancel bool)
}

pub fn (s &EditorNode3DGizmoPlugin) gd_commit_subgizmos(gizmo EditorNode3DGizmo, ids PackedInt32Array, restores Array, cancel bool) {
	classname := StringName.new("EditorNode3DGizmoPlugin")
	fnname := StringName.new("_commit_subgizmos")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2282018236)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&gizmo.ptr)
	args[1] = unsafe{voidptr(&ids)}
	args[2] = unsafe{voidptr(&restores)}
	args[3] = unsafe{voidptr(&cancel)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorNode3DGizmoPlugin_create_material_Cfg {
pub:
	billboard bool
	on_top bool
	use_vertex_color bool
}

pub fn (s &EditorNode3DGizmoPlugin) create_material(name string, color Color, cfg EditorNode3DGizmoPlugin_create_material_Cfg) {
	classname := StringName.new("EditorNode3DGizmoPlugin")
	fnname := StringName.new("create_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3486012546)
	mut args := unsafe { [5]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&color)}
	args[2] = unsafe{voidptr(&cfg.billboard)}
	args[3] = unsafe{voidptr(&cfg.on_top)}
	args[4] = unsafe{voidptr(&cfg.use_vertex_color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorNode3DGizmoPlugin_create_icon_material_Cfg {
pub:
	on_top bool
	color Color
}

pub fn (s &EditorNode3DGizmoPlugin) create_icon_material(name string, texture Texture2D, cfg EditorNode3DGizmoPlugin_create_icon_material_Cfg) {
	classname := StringName.new("EditorNode3DGizmoPlugin")
	fnname := StringName.new("create_icon_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3804976916)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&texture.ptr)
	args[2] = unsafe{voidptr(&cfg.on_top)}
	args[3] = unsafe{voidptr(&cfg.color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorNode3DGizmoPlugin_create_handle_material_Cfg {
pub:
	billboard bool
	texture Texture2D
}

pub fn (s &EditorNode3DGizmoPlugin) create_handle_material(name string, cfg EditorNode3DGizmoPlugin_create_handle_material_Cfg) {
	classname := StringName.new("EditorNode3DGizmoPlugin")
	fnname := StringName.new("create_handle_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2486475223)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.billboard)}
	args[2] = voidptr(&cfg.texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorNode3DGizmoPlugin) add_material(name string, material StandardMaterial3D) {
	classname := StringName.new("EditorNode3DGizmoPlugin")
	fnname := StringName.new("add_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1374068695)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&material.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorNode3DGizmoPlugin_get_material_Cfg {
pub:
	gizmo EditorNode3DGizmo
}

pub fn (s &EditorNode3DGizmoPlugin) get_material(name string, cfg EditorNode3DGizmoPlugin_get_material_Cfg) StandardMaterial3D {
	mut result := StandardMaterial3D{}
	classname := StringName.new("EditorNode3DGizmoPlugin")
	fnname := StringName.new("get_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 974464017)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&cfg.gizmo.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}
