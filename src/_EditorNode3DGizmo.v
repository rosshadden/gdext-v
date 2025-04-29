module gd

pub struct EditorNode3DGizmo {
	Node3DGizmo
}

pub fn (s &EditorNode3DGizmo) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorNode3DGizmo) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IEditorNode3DGizmoRedraw {
mut:
	redraw_()
}

pub fn (s &EditorNode3DGizmo) gd_redraw() {
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("_redraw")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorNode3DGizmoGetHandleName {
mut:
	get_handle_name_(id i64, secondary bool) String
}

pub fn (s &EditorNode3DGizmo) gd_get_handle_name(id i64, secondary bool) string {
	mut result := String{}
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("_get_handle_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1868713439)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&secondary)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorNode3DGizmoIsHandleHighlighted {
mut:
	is_handle_highlighted_(id i64, secondary bool) bool
}

pub fn (s &EditorNode3DGizmo) gd_is_handle_highlighted(id i64, secondary bool) bool {
	mut result := false
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("_is_handle_highlighted")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 361316320)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&secondary)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorNode3DGizmoGetHandleValue {
mut:
	get_handle_value_(id i64, secondary bool) Variant
}

pub fn (s &EditorNode3DGizmo) gd_get_handle_value(id i64, secondary bool) Variant {
	mut result := Variant{}
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("_get_handle_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2144196525)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&secondary)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorNode3DGizmoBeginHandleAction {
mut:
	begin_handle_action_(id i64, secondary bool)
}

pub fn (s &EditorNode3DGizmo) gd_begin_handle_action(id i64, secondary bool) {
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("_begin_handle_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&secondary)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorNode3DGizmoSetHandle {
mut:
	set_handle_(id i64, secondary bool, camera Camera3D, point Vector2)
}

pub fn (s &EditorNode3DGizmo) gd_set_handle(id i64, secondary bool, camera Camera3D, point Vector2) {
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("_set_handle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2210262157)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&secondary)}
	args[2] = voidptr(&camera.ptr)
	args[3] = unsafe{voidptr(&point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorNode3DGizmoCommitHandle {
mut:
	commit_handle_(id i64, secondary bool, restore Variant, cancel bool)
}

pub fn (s &EditorNode3DGizmo) gd_commit_handle(id i64, secondary bool, restore Variant, cancel bool) {
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("_commit_handle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3655739840)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&secondary)}
	args[2] = unsafe{voidptr(&restore)}
	args[3] = unsafe{voidptr(&cancel)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorNode3DGizmoSubgizmosIntersectRay {
mut:
	subgizmos_intersect_ray_(camera Camera3D, point Vector2) i64
}

pub fn (s &EditorNode3DGizmo) gd_subgizmos_intersect_ray(camera Camera3D, point Vector2) i64 {
	mut result := i64(0)
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("_subgizmos_intersect_ray")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2055005479)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&camera.ptr)
	args[1] = unsafe{voidptr(&point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorNode3DGizmoSubgizmosIntersectFrustum {
mut:
	subgizmos_intersect_frustum_(camera Camera3D, frustum Array) PackedInt32Array
}

pub fn (s &EditorNode3DGizmo) gd_subgizmos_intersect_frustum(camera Camera3D, frustum Array) PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("_subgizmos_intersect_frustum")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1653813165)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&camera.ptr)
	args[1] = unsafe{voidptr(&frustum)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorNode3DGizmoSetSubgizmoTransform {
mut:
	set_subgizmo_transform_(id i64, transform Transform3D)
}

pub fn (s &EditorNode3DGizmo) gd_set_subgizmo_transform(id i64, transform Transform3D) {
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("_set_subgizmo_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616898986)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorNode3DGizmoGetSubgizmoTransform {
mut:
	get_subgizmo_transform_(id i64) Transform3D
}

pub fn (s &EditorNode3DGizmo) gd_get_subgizmo_transform(id i64) Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("_get_subgizmo_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorNode3DGizmoCommitSubgizmos {
mut:
	commit_subgizmos_(ids PackedInt32Array, restores Array, cancel bool)
}

pub fn (s &EditorNode3DGizmo) gd_commit_subgizmos(ids PackedInt32Array, restores Array, cancel bool) {
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("_commit_subgizmos")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411059856)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&ids)}
	args[1] = unsafe{voidptr(&restores)}
	args[2] = unsafe{voidptr(&cancel)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorNode3DGizmo_add_lines_Cfg {
pub:
	billboard bool
	modulate Color
}

pub fn (s &EditorNode3DGizmo) add_lines(lines PackedVector3Array, material Material, cfg EditorNode3DGizmo_add_lines_Cfg) {
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("add_lines")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2910971437)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&lines)}
	args[1] = voidptr(&material.ptr)
	args[2] = unsafe{voidptr(&cfg.billboard)}
	args[3] = unsafe{voidptr(&cfg.modulate)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorNode3DGizmo_add_mesh_Cfg {
pub:
	material Material
	transform Transform3D
	skeleton SkinReference
}

pub fn (s &EditorNode3DGizmo) add_mesh(mesh Mesh, cfg EditorNode3DGizmo_add_mesh_Cfg) {
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("add_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1579955111)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&mesh.ptr)
	args[1] = voidptr(&cfg.material.ptr)
	args[2] = unsafe{voidptr(&cfg.transform)}
	args[3] = voidptr(&cfg.skeleton.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorNode3DGizmo) add_collision_segments(segments PackedVector3Array) {
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("add_collision_segments")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 334873810)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&segments)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorNode3DGizmo) add_collision_triangles(triangles TriangleMesh) {
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("add_collision_triangles")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 54901064)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&triangles.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorNode3DGizmo_add_unscaled_billboard_Cfg {
pub:
	default_scale f64
	modulate Color
}

pub fn (s &EditorNode3DGizmo) add_unscaled_billboard(material Material, cfg EditorNode3DGizmo_add_unscaled_billboard_Cfg) {
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("add_unscaled_billboard")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 520007164)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&material.ptr)
	args[1] = unsafe{voidptr(&cfg.default_scale)}
	args[2] = unsafe{voidptr(&cfg.modulate)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorNode3DGizmo_add_handles_Cfg {
pub:
	billboard bool
	secondary bool
}

pub fn (s &EditorNode3DGizmo) add_handles(handles PackedVector3Array, material Material, ids PackedInt32Array, cfg EditorNode3DGizmo_add_handles_Cfg) {
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("add_handles")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2254560097)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&handles)}
	args[1] = voidptr(&material.ptr)
	args[2] = unsafe{voidptr(&ids)}
	args[3] = unsafe{voidptr(&cfg.billboard)}
	args[4] = unsafe{voidptr(&cfg.secondary)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorNode3DGizmo) set_node_3d(node Node) {
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("set_node_3d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&node.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorNode3DGizmo) get_node_3d() Node3D {
	mut result := Node3D{}
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("get_node_3d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 151077316)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorNode3DGizmo) get_plugin() EditorNode3DGizmoPlugin {
	mut result := EditorNode3DGizmoPlugin{}
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("get_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4250544552)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorNode3DGizmo) clear() {
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorNode3DGizmo) set_hidden(hidden bool) {
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("set_hidden")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&hidden)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorNode3DGizmo) is_subgizmo_selected(id i64) bool {
	mut result := false
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("is_subgizmo_selected")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorNode3DGizmo) get_subgizmo_selection() PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("EditorNode3DGizmo")
	fnname := StringName.new("get_subgizmo_selection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
