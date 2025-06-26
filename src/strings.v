module gd

pub fn String.new(value string) String {
	result := String{}
	gdf.string_new_with_utf8_chars_and_len2(voidptr(&result), value.str, value.len)
	return result
}

pub fn StringName.new(value string) StringName {
	return StringName.new2(value)
}

pub fn NodePath.new(value string) NodePath {
	return NodePath.new2(value)
}

pub fn (s &StringName) to_v() string {
	pba := s.to_utf8_buffer()
	defer { pba.deinit() }
	length := pba.size()
	mut array := []u8{cap: int(length)}
	for i in 0 .. length {
		array << u8(pba.index(i))
	}
	return array.bytestr()
}

pub fn (s &String) to_v() string {
	pba := s.to_utf8_buffer()
	defer { pba.deinit() }
	length := pba.size()
	mut array := []u8{cap: int(length)}
	for i in 0 .. length {
		array << u8(pba.index(i))
	}
	return array.bytestr()
}

pub fn (s &String) str() string {
	return 'String{${s.to_v()}}'
}

pub fn (s &StringName) str() string {
	return 'StringName{${s.to_v()}}'
}
