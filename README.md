# Stickshot

Primitive cross-platform Stickman shooter inspired by Archero.

## Quick start

```bash
pip install -r requirements.txt && python run_tests.py
godot project.godot
```

The first command installs the test dependency and runs the suite.
The second launches the game in [Godot](https://godotengine.org/) 4.

## Controls
- Move: WASD
- Attack: Space
- Switch weapons: 1 (bow), 2 (pistol), 3 (staff)

## Equipment
The player has placeholder slots for gloves, helmet, pants and cloak.

## Testing on Windows
Windows users can double click `windows_tester\run_tests.bat` to install
dependencies, run the Python tests, and launch the game (requires Godot on PATH).
