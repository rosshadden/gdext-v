module gd

pub struct StreamPeerBuffer {
	StreamPeer
}

pub fn (s &StreamPeerBuffer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s StreamPeerBuffer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &StreamPeerBuffer) seek(position i64) {
	classname := StringName.new("StreamPeerBuffer")
	fnname := StringName.new("seek")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StreamPeerBuffer) get_size() i64 {
	mut result := i64(0)
	classname := StringName.new("StreamPeerBuffer")
	fnname := StringName.new("get_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StreamPeerBuffer) get_position() i64 {
	mut result := i64(0)
	classname := StringName.new("StreamPeerBuffer")
	fnname := StringName.new("get_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StreamPeerBuffer) resize(size i64) {
	classname := StringName.new("StreamPeerBuffer")
	fnname := StringName.new("resize")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StreamPeerBuffer) set_data_array(data PackedByteArray) {
	classname := StringName.new("StreamPeerBuffer")
	fnname := StringName.new("set_data_array")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2971499966)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StreamPeerBuffer) get_data_array() PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("StreamPeerBuffer")
	fnname := StringName.new("get_data_array")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2362200018)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StreamPeerBuffer) clear() {
	classname := StringName.new("StreamPeerBuffer")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StreamPeerBuffer) duplicate() StreamPeerBuffer {
	mut result := StreamPeerBuffer{}
	classname := StringName.new("StreamPeerBuffer")
	fnname := StringName.new("duplicate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2474064677)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
