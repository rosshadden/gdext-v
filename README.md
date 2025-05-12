# gdext-v

V bindings for Godot.

## Setup

I (obviously) don't have a lot of docs yet and haven't spent time making this project user-friendly yet.
But here are the steps that should get you started.
These will definitely improve over time.

Look at my [babel](https://github.com/gamma-ray-studios/babel/blob/main/src/main.v) project for a more detailed example for now.

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
godot --headless --dump-extension-api
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
import log
import src.entities.actors
import services

pub fn init_gd(v voidptr, l gd.GDExtensionInitializationLevel) {
	if l == .initialization_level_scene {
		// This is where you register your classes
		gd.register_class[actors.Player]('Node2D')
		gd.register_class_with_name[services.Debug]('Node', 'ThisIsHowYouCanGiveACustomClassName')
	}
}

pub fn deinit_gd(v voidptr, l gd.GDExtensionInitializationLevel) {
	if l == .initialization_level_scene {}
}

@[export: 'gdext_v_init']
fn init_gdext(gpaddr fn (&i8) gd.GDExtensionInterfaceFunctionPtr, clp gd.GDExtensionClassLibraryPtr, mut gdnit gd.GDExtensionInitialization) gd.GDExtensionBool {
	gd.setup_lib(gpaddr, clp)
	gdnit.initialize = init_gd
	gdnit.deinitialize = deinit_gd
	log.set_logger(&gd.GodotLogger{})
	return 1
}
```

3. Add your files and register them in the `init_gd` function as shown above.

4. Build the project:
```bash
v -shared -enable-globals -o lib/libvlang.so -d no_backtrace .
patchelf --clear-exexstack lib/libvlang.so
```

I have this stuff in a bin file that I run.
Again, check out my [babel](https://github.com/gamma-ray-studios/babel/blob/main/bin/build.vsh) project for now until I add bettor docs and tooling.

## Usage

Once everything is set up, you just have to run the step above whenever you make changes to your V code:
```bash
v -shared -enable-globals -o lib/libvlang.so -d no_backtrace .
patchelf --clear-exexstack lib/libvlang.so
```

## Prior art

- [godot-cpp](https://github.com/godotengine/godot-cpp)
- [godot-rust](https://github.com/godot-rust/gdext)
- [gdext-nim](https://github.com/godot-nim/gdext-nim)
- jcweaver997's work on his [vgdextension](https://github.com/jcweaver997/vgdextension) was _invaluable_ to this project.
I found it while bashing my head against the wall on something and searching Github with `path:*.v` queries.
Had I known about it from the outset I might have used it as a starting point 😅.
