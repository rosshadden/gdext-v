module gdext

// Prevents TLS destructors from being registered on Linux to support hot reloading.
//
// Adapted from godot-rust workaround:
// https://fasterthanli.me/articles/so-you-want-to-live-reload-rust#what-can-prevent-dlclose-from-unloading-a-library
import dl

type ThreadAtexitFn = fn (voidptr, voidptr, voidptr)

__global (
	hot_reload_enabled bool
	lib_handle         voidptr
)

pub fn enable_hot_reload() {
	hot_reload_enabled = true

	// open the handle
	lib_path := get_library_path()
	lib_handle = dl.open(lib_path, dl.rtld_lazy | dl.rtld_nodelete)
}

pub fn disable_hot_reload() {
	hot_reload_enabled = false

	// close the handle
	if lib_handle != unsafe { nil } {
		dl.close(lib_handle)
		lib_handle = unsafe { nil }
	}
}

fn get_library_path() string {
	return './lib/libvlang.so'
}

@[export: '__cxa_thread_atexit_impl']
pub fn cxa_thread_atexit(func voidptr, obj voidptr, dso voidptr) {
	if hot_reload_enabled {
		return
	}

	// lazy init
	sym := dl.sym(dl.rtld_next, '__cxa_thread_atexit_impl')
	if sym == unsafe { nil } {
		return
	}

	// call real implementation
	atexit_fn := unsafe { *(&ThreadAtexitFn(sym)) }
	atexit_fn(func, obj, dso)
}
