Internal module used for generating the Godot V bindings.

## Setup

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
