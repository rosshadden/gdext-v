module gd

pub interface ToObject {
	obj() Object
}

pub fn (s Object) obj() Object {
	return s
}

// TODO: unify all these misc cast/path methods

pub fn (s &Object) try_cast_to[T]() ?T {
	sn := StringName.new(T.name.split('.').last())
	defer { sn.deinit() }
	class_tag := gdf.classdb_get_class_tag(sn)
	t := T{
		ptr: gdf.object_cast_to(s.ptr, class_tag)
	}

	return t
}

pub fn (s &Object) cast_to[T]() T {
	type_name := T.name.split('.').last()
	return s.try_cast_to[T]() or { panic('cannot cast: ${s} -> ${type_name}') }
}

pub fn (s &Object) try_cast_to_v[T]() ?&T {
	type_name := T.name.split('.').last()
	sn := StringName.new(type_name)
	defer { sn.deinit() }
	class_tag := gdf.classdb_get_class_tag(sn)
	t := Object{
		ptr: gdf.object_cast_to(s.ptr, class_tag)
	}
	if t.ptr == unsafe { nil } {
		return none
	}
	gdf.object_get_class_name(t.ptr, gdf.clp, GDExtensionUninitializedStringNamePtr(&sn))
	o_name := sn.to_v()
	if o_name != type_name {
		return none
	}
	v_ptr := gdf.object_get_instance_binding(t.ptr, gdf.clp, unsafe { nil })
	if v_ptr == unsafe { nil } {
		return none
	}
	return unsafe { &T(v_ptr) }
}

pub fn (s &Object) cast_to_v[T]() &T {
	type_name := T.name.split('.').last()
	return s.try_cast_to_v[T]() or { panic('cannot cast: ${s} -> &${type_name}') }
}

pub fn (s &Node) get_node_v(path string) Node {
	np := NodePath.new(path)
	defer { np.deinit() }
	return s.get_node(np)
}

pub fn (s &Node) get_node_as[T](path string) T {
	return s.get_node_v(path).cast_to[T]()
}

pub fn Callable.new(object ToObject, method string) Callable {
	return Callable.new2(object.obj(), method)
}

pub fn (s &PackedScene) instantiate_as[T](cfg PackedScene_instantiate_Cfg) T {
	scene := s.instantiate(cfg)
	return scene.cast_to[T]()
}

// TEMP: workaround for SceneTree#call_group crashing
pub fn (s &SceneTree) call_group_v(group string, method string, varargs ...ToVariant) {
	nodes := s.get_nodes_in_group(group)
	defer { nodes.deinit() }
	for i in 0 .. nodes.size() {
		var := nodes.get(i)
		mut node := Node.new()
		node.from_variant(var)
		if node.has_method(method) {
			node.call(method, ...varargs)
		}
	}
}

// Get the list of signals on an object.
pub fn (s &Object) get_signal_list_v() []string {
	mut signals := []string{}
	dicts := s.get_signal_list().to_v[Dictionary]()
	sn := String.new('name')
	for dict in dicts {
		name := dict.get(sn, default: String{})
		signals << name.to_string()
	}
	return signals
}

// Convert a GD Array of Variants to a generic V array.
pub fn (s &Array) to_v[T]() []T {
	mut result := []T{cap: int(s.size())}
	for i in 0 .. s.size() {
		result << T.from_variant(s.get(i))
	}
	return result
}
