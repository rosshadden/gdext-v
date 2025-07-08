module gd

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

pub fn Callable.new(object &Object, method string) Callable {
	return Callable.new2(object, method)
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
	dicts := s.get_signal_list().to_v().map(Dictionary.from_variant(it))
	sn := String.new('name')
	for dict in dicts {
		name := dict.get(sn, default: String{})
		signals << name.to_string()
	}
	return signals
}

// Get a map of all signals on an object.
// This allows connecting to them directly:
// ```v
// cb := gd.Callable.new2(s.obj(), 'on_tree_exited')
// s.animator.signals()['tree_exited'].connect(cb)
// ```
pub fn (s &Object) signals() map[string]Signal {
	signals := s.get_signal_list_v()
	mut result := map[string]Signal{}
	for name in signals {
		result[name] = Signal.new2(s, name)
	}
	return result
}

// Convert a GD Array (of Variants) to a V Array (of Variants).
pub fn (s &Array) to_v() []Variant {
	mut result := []Variant{cap: int(s.size())}
	for i in 0 .. s.size() {
		result << s.get(i)
	}
	return result
}
