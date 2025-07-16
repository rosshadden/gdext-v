module gd

pub type AnimationPlayerCurrentAnimationChangedFn = fn (name String)

pub type AnimationPlayerCurrentAnimationChangedFn2 = fn (name StringName)

pub type SignalFn = AnimationPlayerCurrentAnimationChangedFn
	| AnimationPlayerCurrentAnimationChangedFn2

pub struct VSignal[T] {
	Signal
}

@[heap]
struct SignalCtx {
	f SignalFn
}

fn signal_func[T](data voidptr, args &&Variant, arg_count GDExtensionInt, ret &Variant, err &GDExtensionCallError) {
	ctx := unsafe { &SignalCtx(data) }
	f := ctx.f

	if f is AnimationPlayerCurrentAnimationChangedFn {
		name := unsafe { String.from_variant(args[0]) }
		f(name)
	}
}

fn make_callable[T](f SignalFn) Callable {
	ctx := &SignalCtx{f}

	info := GDExtensionCallableCustomInfo2{
		callable_userdata:       ctx
		token:                   gdf.clp
		object_id:               0
		call_func:               signal_func[T]
		is_valid_func:           fn (_ voidptr) GDExtensionBool {
			return GDExtensionBool(true)
		}
		free_func:               fn (_ voidptr) {
			println('TODO: free_func')
		}
		hash_func:               fn (data voidptr) u32 {
			ctx := unsafe { &SignalCtx(data) }
			return u32(&ctx)
		}
		equal_func:              fn (_ voidptr, _ voidptr) GDExtensionBool {
			println('TODO: equal_func')
			return GDExtensionBool(true)
		}
		less_than_func:          fn (_ voidptr, _ voidptr) GDExtensionBool {
			println('TODO: less_than_func')
			return GDExtensionBool(false)
		}
		to_string_func:          fn (_ voidptr, _ &GDExtensionBool, _ GDExtensionUninitializedStringPtr) {
			println('TODO: to_string_func')
		}
		get_argument_count_func: fn (data voidptr, ret &GDExtensionBool) GDExtensionInt {
			println('TODO: get_argument_count_func')
			unsafe {
				*ret = GDExtensionBool(true)
			}
			return GDExtensionInt(1)
		}
	}

	callable := Callable.new0()
	gdf.callable_custom_create2(GDExtensionUninitializedTypePtr(&callable), &info)
	return callable
}

pub fn (s &VSignal[T]) connect(f SignalFn) Callable {
	cb := make_callable[T](f)
	s.Signal.connect(cb)
	return cb
}
