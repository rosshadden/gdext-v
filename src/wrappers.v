module gd

import sync

pub fn Callable.new(object ToObject, method string) Callable {
	return Callable.new2(object.obj(), method)
}

pub struct VSignal[T] {
	Signal
}

enum SignalKind {
	string
	callable
	func_void
}

@[heap]
struct SignalCtx {
	kind      SignalKind
	str       string
	func_void SignalFn_void
	func_ptr  voidptr
}

// pub fn Callable.new_fn[T](f SignalFn) Callable {
pub fn Callable.new_fn[T](f SignalFn_void) Callable {
	ctx := &SignalCtx{
		kind:      .func_void
		func_void: f
		func_ptr:  voidptr(f)
	}
	println('Callable.new_fn [${ctx.kind}]: ${ctx}')
	println('ctx.kind: ${ctx.kind}')
	println('Created ctx.func_void: ${ctx.func_void}')

	info := GDExtensionCallableCustomInfo2{
		callable_userdata:       voidptr(ctx)
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
			return GDExtensionInt(0)
		}
	}

	callable := Callable.new0()
	gdf.callable_custom_create2(GDExtensionUninitializedTypePtr(&callable), &info)
	return callable
}

@[params]
pub struct VSignalCfg {
pub:
	// Only used if `f` is a string.
	node &ToObject = unsafe { nil }
	// Object.ConnectFlags
	flags ObjectConnectFlags
}

// Connect a function to the signal.
// May be a Callable, an anonymous function, a lambda expression, or a string (requires `node`).
pub fn (s &VSignal[T]) connect(f SignalFn, cfg VSignalCfg) Callable {
	cb := match f {
		string {
			println('Creating Callable from string')
			Callable.new(cfg.node, f)
		}
		Callable {
			println('Creating Callable from Callable')
			f
		}
		SignalFn_void {
			println('Creating Callable from SignalFn_void')
			Callable.new_fn[T](f)
		}
		else {
			println('Creating Callable from SignalFn')
			Callable.new0()
		}
	}
	s.Signal.connect(cb, flags: i64(cfg.flags))
	return cb
}

// pub fn (s &VSignal[T]) await() &sync.WaitGroup {
pub fn (s &VSignal[T]) await(wg &sync.WaitGroup) {
	// mut wg := sync.new_waitgroup()
	// wg.add(1)
	println('Awaiting signal: ${s.Signal.get_name()}...')

	s.connect(fn () {
		println('FIRE')
		// wg.done()
	}, flags: .connect_one_shot)
	println('connected')

	// wg.wait()
	// println('waiting')
	// return wg
}
