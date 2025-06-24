module gd

pub fn String.new(str string) String {
	result := String{}
	gdf.string_new_with_utf8_chars_and_len2(voidptr(&result), str.str, str.len)
	return result
}

pub fn StringName.new(str string) StringName {
	s := String.new(str)
	defer { s.deinit() }
	return StringName.new2(s)
}

pub fn NodePath.new(path string) NodePath {
	s := String.new(path)
	defer { s.deinit() }
	return NodePath.new2(s)
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
