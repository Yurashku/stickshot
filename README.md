# Stickshot

A small Godot 4 mechanics prototype for a stickman shooter inspired by Archero. The repository preserves an early cross-platform/mobile game idea: player movement, three projectile types and equipment placeholders. It does not yet contain a complete playable game or an Android export.

## What is implemented

- `CharacterBody2D` movement logic and an attack cooldown.
- A weapon enum for bow, pistol and staff, with arrow, bullet and magic projectile speeds.
- A main scene that instantiates the player, and a separate projectile scene.
- Placeholder equipment fields for gloves, helmet, pants and cloak.
- Two Python checks for required project files and weapon enum entries.

[Player logic](https://github.com/Yurashku/stickshot/blob/main/scripts/player.gd), [projectile logic](https://github.com/Yurashku/stickshot/blob/main/scripts/projectile.gd) and [development history](https://github.com/Yurashku/stickshot/commits/main/) are the main entry points for reviewing this project by Yurashku.

## Run the repository checks

```bash
git clone https://github.com/Yurashku/stickshot.git
cd stickshot
python -m venv .venv
# macOS/Linux: source .venv/bin/activate
# Windows PowerShell: .\.venv\Scripts\Activate.ps1
python -m pip install -r requirements.txt
python run_tests.py
```

The checks were run on Python 3.14.0 and returned `2 passed`. They check the source layout; they do not launch Godot or verify gameplay. Run them from the repository root so relative paths resolve correctly.

## Godot project and intended controls

The source targets [Godot 4](https://godotengine.org/), with `project.godot` pointing to `scenes/main.tscn`. Inspect the project and scenes in Godot before treating them as a runnable game; engine import and launch have not been verified in the documentation check.

The scripts refer to these intended bindings:

| Input action | Intended key |
|---|---|
| `move_up`, `move_left`, `move_down`, `move_right` | W, A, S, D |
| `attack` | Space |
| `weapon_1`, `weapon_2`, `weapon_3` | 1 (bow), 2 (pistol), 3 (staff) |

Those actions are **not configured in the checked-in Input Map**. The player and projectile scenes also contain no visible sprites or collision shapes. Consequently, the code expresses the mechanics, but a fresh checkout should not be presented as a visible, controllable shooter. There are no enemies, damage/progression systems, touch controls or export presets in the current tree.

## Windows helper

The historical `windows_tester/run_tests.bat` installs pytest and attempts to launch Godot. Its parent-relative paths and the tests' root-relative paths do not share a consistent working-directory assumption. Use the explicit root-directory test commands above for a reproducible check.

## License

The current repository does not include a `LICENSE` file. Contact the maintainer to clarify reuse terms.
