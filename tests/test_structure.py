import os

REQUIRED_FILES = [
    "project.godot",
    os.path.join("scenes", "main.tscn"),
    os.path.join("scenes", "player.tscn"),
    os.path.join("scripts", "player.gd"),
    os.path.join("scripts", "projectile.gd"),
]

def test_project_files_exist():
    for path in REQUIRED_FILES:
        assert os.path.exists(path), f"missing {path}"

def test_weapons_defined():
    player_path = os.path.join("scripts", "player.gd")
    with open(player_path, encoding="utf-8") as fh:
        content = fh.read()
    assert "enum Weapon" in content
    for weapon in ["BOW", "PISTOL", "STAFF"]:
        assert weapon in content
