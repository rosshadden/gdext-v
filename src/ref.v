module gd

pub struct Ref[T] {
mut:
	obj T // extends RefCounted
}

// Constructor
pub fn Ref.new[T]() Ref[T] {
	return Ref[T]{}
}

// Initialize with an object
pub fn (mut r Ref[T]) init(obj T) {
	r.obj = obj
	if r.obj.ptr != unsafe { nil } {
		// Use the existing reference method
		r.obj.reference()
	}
}

// Clean up
pub fn (mut r Ref[T]) deinit() {
	if r.obj.ptr != unsafe { nil } {
		// Use the existing unreference method
		r.obj.unreference()
		r.obj.ptr = unsafe { nil }
	}
}

// Access the underlying object
pub fn (r Ref[T]) get() T {
	return r.obj
}

// pub fn (r Ref[T]) to_variant() Variant {
// 	return r.obj.to_variant()
// }

pub fn (mut r Ref[T]) from_variant(v &Variant) {
	mut obj := Object.new()
	obj.from_variant(v)
	if ref := obj.try_cast_to[T]() {
		r.deinit() // Release any existing reference
		r.init(ref)
	}
}
