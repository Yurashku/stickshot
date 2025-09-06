extends CharacterBody2D

enum Weapon { BOW, PISTOL, STAFF }

var weapon = Weapon.BOW
var speed = 200
var attack_cooldown = 0.5
var time_since_attack = 0.0

# basic equipment placeholders
var gloves = null
var helmet = null
var pants = null
var cloak = null

func _process(delta):
    handle_movement(delta)
    time_since_attack += delta
    if Input.is_action_pressed("attack") and time_since_attack >= attack_cooldown:
        attack()
        time_since_attack = 0.0

func handle_movement(delta):
    var direction = Vector2.ZERO
    direction.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
    direction.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
    velocity = direction.normalized() * speed
    move_and_slide()

func attack():
    match weapon:
        Weapon.BOW:
            shoot_projectile("arrow")
        Weapon.PISTOL:
            shoot_projectile("bullet")
        Weapon.STAFF:
            shoot_projectile("magic")

func shoot_projectile(kind):
    var scene = load("res://scenes/projectile.tscn")
    var projectile = scene.instantiate()
    projectile.kind = kind
    projectile.position = position
    projectile.direction = Vector2.RIGHT
    get_parent().add_child(projectile)

func _input(event):
    if event.is_action_pressed("weapon_1"):
        weapon = Weapon.BOW
    elif event.is_action_pressed("weapon_2"):
        weapon = Weapon.PISTOL
    elif event.is_action_pressed("weapon_3"):
        weapon = Weapon.STAFF
