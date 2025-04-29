module gd

pub enum Node3DRotationEditMode as i64 {
	rotation_edit_mode_euler = 0
	rotation_edit_mode_quaternion = 1
	rotation_edit_mode_basis = 2
}

pub struct Node3D {
	Node
}

pub fn (s &Node3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Node3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Node3D) set_transform(local Transform3D) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("set_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&local)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) get_transform() Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("Node3D")
	fnname := StringName.new("get_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) set_position(position Vector3) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("set_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) get_position() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Node3D")
	fnname := StringName.new("get_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) set_rotation(euler_radians Vector3) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("set_rotation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&euler_radians)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) get_rotation() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Node3D")
	fnname := StringName.new("get_rotation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) set_rotation_degrees(euler_degrees Vector3) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("set_rotation_degrees")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&euler_degrees)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) get_rotation_degrees() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Node3D")
	fnname := StringName.new("get_rotation_degrees")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) set_rotation_order(order EulerOrder) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("set_rotation_order")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1820889989)
	mut args := unsafe { [1]voidptr{} }
	i64_order := i64(order)
	args[0] = unsafe{voidptr(&i64_order)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) get_rotation_order() EulerOrder {
	mut result := i64(EulerOrder.euler_order_xyz)
	classname := StringName.new("Node3D")
	fnname := StringName.new("get_rotation_order")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 916939469)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{EulerOrder(result)}
}

pub fn (s &Node3D) set_rotation_edit_mode(edit_mode Node3DRotationEditMode) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("set_rotation_edit_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 141483330)
	mut args := unsafe { [1]voidptr{} }
	i64_edit_mode := i64(edit_mode)
	args[0] = unsafe{voidptr(&i64_edit_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) get_rotation_edit_mode() Node3DRotationEditMode {
	mut result := i64(Node3DRotationEditMode.rotation_edit_mode_euler)
	classname := StringName.new("Node3D")
	fnname := StringName.new("get_rotation_edit_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1572188370)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{Node3DRotationEditMode(result)}
}

pub fn (s &Node3D) set_scale(scale Vector3) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("set_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) get_scale() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Node3D")
	fnname := StringName.new("get_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) set_quaternion(quaternion Quaternion) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("set_quaternion")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1727505552)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&quaternion)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) get_quaternion() Quaternion {
	mut result := Quaternion{}
	classname := StringName.new("Node3D")
	fnname := StringName.new("get_quaternion")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1222331677)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) set_basis(basis Basis) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("set_basis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1055510324)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&basis)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) get_basis() Basis {
	mut result := Basis{}
	classname := StringName.new("Node3D")
	fnname := StringName.new("get_basis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2716978435)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) set_global_transform(global Transform3D) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("set_global_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&global)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) get_global_transform() Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("Node3D")
	fnname := StringName.new("get_global_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) get_global_transform_interpolated() Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("Node3D")
	fnname := StringName.new("get_global_transform_interpolated")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4183770049)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) set_global_position(position Vector3) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("set_global_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) get_global_position() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Node3D")
	fnname := StringName.new("get_global_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) set_global_basis(basis Basis) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("set_global_basis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1055510324)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&basis)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) get_global_basis() Basis {
	mut result := Basis{}
	classname := StringName.new("Node3D")
	fnname := StringName.new("get_global_basis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2716978435)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) set_global_rotation(euler_radians Vector3) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("set_global_rotation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&euler_radians)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) get_global_rotation() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Node3D")
	fnname := StringName.new("get_global_rotation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) set_global_rotation_degrees(euler_degrees Vector3) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("set_global_rotation_degrees")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&euler_degrees)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) get_global_rotation_degrees() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Node3D")
	fnname := StringName.new("get_global_rotation_degrees")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) get_parent_node_3d() Node3D {
	mut result := Node3D{}
	classname := StringName.new("Node3D")
	fnname := StringName.new("get_parent_node_3d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 151077316)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) set_ignore_transform_notification(enabled bool) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("set_ignore_transform_notification")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) set_as_top_level(enable bool) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("set_as_top_level")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) is_set_as_top_level() bool {
	mut result := false
	classname := StringName.new("Node3D")
	fnname := StringName.new("is_set_as_top_level")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) set_disable_scale(disable bool) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("set_disable_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&disable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) is_scale_disabled() bool {
	mut result := false
	classname := StringName.new("Node3D")
	fnname := StringName.new("is_scale_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) get_world_3d() World3D {
	mut result := World3D{}
	classname := StringName.new("Node3D")
	fnname := StringName.new("get_world_3d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 317588385)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) force_update_transform() {
	classname := StringName.new("Node3D")
	fnname := StringName.new("force_update_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) set_visibility_parent(path NodePath) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("set_visibility_parent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) get_visibility_parent() NodePath {
	mut result := NodePath{}
	classname := StringName.new("Node3D")
	fnname := StringName.new("get_visibility_parent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) update_gizmos() {
	classname := StringName.new("Node3D")
	fnname := StringName.new("update_gizmos")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) add_gizmo(gizmo Node3DGizmo) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("add_gizmo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1544533845)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&gizmo.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) get_gizmos() Array {
	mut result := Array{}
	classname := StringName.new("Node3D")
	fnname := StringName.new("get_gizmos")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) clear_gizmos() {
	classname := StringName.new("Node3D")
	fnname := StringName.new("clear_gizmos")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) set_subgizmo_selection(gizmo Node3DGizmo, id i64, transform Transform3D) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("set_subgizmo_selection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3317607635)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&gizmo.ptr)
	args[1] = unsafe{voidptr(&id)}
	args[2] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) clear_subgizmo_selection() {
	classname := StringName.new("Node3D")
	fnname := StringName.new("clear_subgizmo_selection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) set_visible(visible bool) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("set_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&visible)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) is_visible() bool {
	mut result := false
	classname := StringName.new("Node3D")
	fnname := StringName.new("is_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) is_visible_in_tree() bool {
	mut result := false
	classname := StringName.new("Node3D")
	fnname := StringName.new("is_visible_in_tree")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) show() {
	classname := StringName.new("Node3D")
	fnname := StringName.new("show")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) hide() {
	classname := StringName.new("Node3D")
	fnname := StringName.new("hide")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) set_notify_local_transform(enable bool) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("set_notify_local_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) is_local_transform_notification_enabled() bool {
	mut result := false
	classname := StringName.new("Node3D")
	fnname := StringName.new("is_local_transform_notification_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) set_notify_transform(enable bool) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("set_notify_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) is_transform_notification_enabled() bool {
	mut result := false
	classname := StringName.new("Node3D")
	fnname := StringName.new("is_transform_notification_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) rotate(axis Vector3, angle f64) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("rotate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3436291937)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&axis)}
	args[1] = unsafe{voidptr(&angle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) global_rotate(axis Vector3, angle f64) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("global_rotate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3436291937)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&axis)}
	args[1] = unsafe{voidptr(&angle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) global_scale(scale Vector3) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("global_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) global_translate(offset Vector3) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("global_translate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) rotate_object_local(axis Vector3, angle f64) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("rotate_object_local")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3436291937)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&axis)}
	args[1] = unsafe{voidptr(&angle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) scale_object_local(scale Vector3) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("scale_object_local")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) translate_object_local(offset Vector3) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("translate_object_local")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) rotate_x(angle f64) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("rotate_x")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&angle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) rotate_y(angle f64) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("rotate_y")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&angle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) rotate_z(angle f64) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("rotate_z")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&angle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) translate(offset Vector3) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("translate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) orthonormalize() {
	classname := StringName.new("Node3D")
	fnname := StringName.new("orthonormalize")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) set_identity() {
	classname := StringName.new("Node3D")
	fnname := StringName.new("set_identity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Node3D_look_at_Cfg {
pub:
	up Vector3
	use_model_front bool
}

pub fn (s &Node3D) look_at(target Vector3, cfg Node3D_look_at_Cfg) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("look_at")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2882425029)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&target)}
	args[1] = unsafe{voidptr(&cfg.up)}
	args[2] = unsafe{voidptr(&cfg.use_model_front)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Node3D_look_at_from_position_Cfg {
pub:
	up Vector3
	use_model_front bool
}

pub fn (s &Node3D) look_at_from_position(position Vector3, target Vector3, cfg Node3D_look_at_from_position_Cfg) {
	classname := StringName.new("Node3D")
	fnname := StringName.new("look_at_from_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2086826090)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	args[1] = unsafe{voidptr(&target)}
	args[2] = unsafe{voidptr(&cfg.up)}
	args[3] = unsafe{voidptr(&cfg.use_model_front)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node3D) to_local(global_point Vector3) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Node3D")
	fnname := StringName.new("to_local")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 192990374)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&global_point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node3D) to_global(local_point Vector3) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Node3D")
	fnname := StringName.new("to_global")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 192990374)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&local_point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
