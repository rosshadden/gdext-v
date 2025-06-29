# gdext-v

V bindings for Godot.

## Examples

Check out the [demo repository](https://github.com/rosshadden/gdext-v-demos) for examples.

## Setup

I (obviously) don't have a lot of docs yet and haven't spent time making this project user-friendly yet.
But here are the steps that should get you started.
These will definitely improve over time.

### Setup library

1. Clone/download this repo somewhere:
```bash
git clone https://github.com/rosshadden/gdext-v.git
```

2. Point a symlink to it from V's module directory (or make this where you clone it):
```bash
ln -s /absolute/path/to/gdext-v ~/.vmodules/gd
```

3. Dump the extension API from Godot into `./data/`:
```bash
cd data
godot --headless --dump-extension-api-with-docs
cd ..
```

4. Run the generator:
```bash
./bin/gen.vsh
```

### Setup project

1. Add a `.gdextension` file to your Godot project (I put mine at `./lib/v.gdextension`):
```toml
[configuration]
entry_symbol = "gdext_v_init"
compatibility_minimum = 4.4
reloadable = true

[libraries]
linux.debug.x86_64 = "res://lib/libvlang.so"
```

2. Make a V file in your Godot project that will serve as the entry point:
```v
module main

import gd
import gd.gdext
import src.entities.actors
import services

pub fn init(v voidptr, l gd.GDExtensionInitializationLevel) {
	if l == .initialization_level_scene {
		// This is where you register your classes
		gd.register_class[actors.Player]('Node2D')
		gd.register_class_with_name[services.Debug]('Node', 'ThisIsHowYouCanGiveACustomClassName')
	}
}

pub fn deinit(v voidptr, l gd.GDExtensionInitializationLevel) {
	if l == .initialization_level_scene {}
}

@[export: 'gdext_v_init']
fn init_gdext(gpaddr fn (&i8) gd.GDExtensionInterfaceFunctionPtr, clp gd.GDExtensionClassLibraryPtr, mut gdnit gd.GDExtensionInitialization) gd.GDExtensionBool {
	gdext.setup(gpaddr, clp)
	gdnit.initialize = init
	gdnit.deinitialize = deinit
	return 1
}
```
> Note: This is `export`, not to be confused with `gd.export`. This is V's built-in way of exporting to the C FFI.

If you want your logs to go through Godot, you can set up the `gd.Log`.
```v
import log

@[export: 'gdext_v_init']
fn init_gdext(gpaddr fn (&i8) gd.GDExtensionInterfaceFunctionPtr, clp gd.GDExtensionClassLibraryPtr, mut gdnit gd.GDExtensionInitialization) gd.GDExtensionBool {
	// ☝️all the above setup stuff
	log.set_logger(gd.Log{})
	return 1
}
```

This is _not necessary_, and in fact I prefer it off, because for some reason if there is a crash Godot doesn't output any logs,
whereas logging through V's default logger works great.
Note that the default logger has a `level` of `.info`, so I like to lower it: `log.set_level(.debug)`.

3. Add your files and register them in the `init_gd` function as shown above.

4. Build the project:
```bash
v -shared -enable-globals -o lib/libvlang.so -d no_backtrace .
patchelf --clear-exexstack lib/libvlang.so
```

The `patchelf` step is to remove exec bit from the library, which is set by `tcc`.
Thus if using another compiler (with the `-cc` flag) that step may be omitted.
However, `tcc` is _leaps and bounds_ faster than `clang` or `gcc` in my testing,
so I recommend using it throughout development and using a different compiler for release builds.

I do all this and more [in a build script in the demo repo](https://github.com/rosshadden/gdext-v-demos/blob/44aec37c1ef473ec839660a97abe6a14860b362f/bin/build.vsh).

Another, more minimal, repo you could reference is the [babel](https://github.com/gamma-ray-studios/babel/blob/main/bin/build.vsh) project,
which is meant to showcase using basic functionality of many Godot language bindings, including `gdext-v`.

## Usage

Once everything is set up, you just have to run the step above whenever you make changes to your V code:
```bash
v -shared -enable-globals -o lib/libvlang.so -d no_backtrace .
patchelf --clear-exexstack lib/libvlang.so
```

## Documentation

Check out the [generated API docs](https://rosshadden.github.io/gdext-v/).

Or generate your own locally:
```v
v doc -m -o docs -f html .
cp .github/templates/index.html docs/
```

## State

Everything needed to make games with V has been implemented.
And it's pretty damn ergonomic.
I have a really low tolerance for friction and I want to make this project as pleasant as realistically possible to work with.

## Helpful resources

- [godot-cpp](https://github.com/godotengine/godot-cpp)
- [godot-rust](https://github.com/godot-rust/gdext)
- [gdext-nim](https://github.com/godot-nim/gdext-nim)
- jcweaver997's work on his [vgdextension](https://github.com/jcweaver997/vgdextension) was invaluable to this project.
I found it while bashing my head against the wall on something specific and searching Github with `NOT is:fork path:*.v` queries (👈 pro tip).
