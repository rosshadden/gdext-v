module gd

pub struct AudioFrame {
pub mut:
	left f64
	right f64
}

pub struct CaretInfo {
pub mut:
	leading_caret Rect2
	trailing_caret Rect2
	leading_direction TextServerDirection
	trailing_direction TextServerDirection
}

pub struct Glyph {
pub mut:
	start i64 = -1
	end i64 = -1
	count u8
	repeat u8 = 1
	flags u16
	x_off f64
	y_off f64
	advance f64
	font_rid RID
	font_size i64
	index i32
}

pub struct ObjectID {
pub mut:
	id u64
}

pub struct PhysicsServer2DExtensionMotionResult {
pub mut:
	travel Vector2
	remainder Vector2
	collision_point Vector2
	collision_normal Vector2
	collider_velocity Vector2
	collision_depth f64
	collision_safe_fraction f64
	collision_unsafe_fraction f64
	collision_local_shape i64
	collider_id ObjectID
	collider RID
	collider_shape i64
}

pub struct PhysicsServer2DExtensionRayResult {
pub mut:
	position Vector2
	normal Vector2
	rid RID
	collider_id ObjectID
	collider &Object
	shape i64
}

pub struct PhysicsServer2DExtensionShapeRestInfo {
pub mut:
	point Vector2
	normal Vector2
	rid RID
	collider_id ObjectID
	shape i64
	linear_velocity Vector2
}

pub struct PhysicsServer2DExtensionShapeResult {
pub mut:
	rid RID
	collider_id ObjectID
	collider &Object
	shape i64
}

pub struct PhysicsServer3DExtensionMotionCollision {
pub mut:
	position Vector3
	normal Vector3
	collider_velocity Vector3
	collider_angular_velocity Vector3
	depth f64
	local_shape i64
	collider_id ObjectID
	collider RID
	collider_shape i64
}

pub struct PhysicsServer3DExtensionMotionResult {
pub mut:
	travel Vector3
	remainder Vector3
	collision_depth f64
	collision_safe_fraction f64
	collision_unsafe_fraction f64
	collisions[32] PhysicsServer3DExtensionMotionCollision
	collision_count i64
}

pub struct PhysicsServer3DExtensionRayResult {
pub mut:
	position Vector3
	normal Vector3
	rid RID
	collider_id ObjectID
	collider &Object
	shape i64
	face_index i64
}

pub struct PhysicsServer3DExtensionShapeRestInfo {
pub mut:
	point Vector3
	normal Vector3
	rid RID
	collider_id ObjectID
	shape i64
	linear_velocity Vector3
}

pub struct PhysicsServer3DExtensionShapeResult {
pub mut:
	rid RID
	collider_id ObjectID
	collider &Object
	shape i64
}

pub struct ScriptLanguageExtensionProfilingInfo {
pub mut:
	signature StringName
	call_count u64
	total_time u64
	self_time u64
}
