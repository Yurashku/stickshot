extends Area2D

var direction = Vector2.RIGHT
var speed = 400
var kind = "arrow"

func _ready():
    match kind:
        "arrow":
            speed = 400
        "bullet":
            speed = 600
        "magic":
            speed = 300

func _process(delta):
    position += direction * speed * delta
    if abs(position.x) > 2000 or abs(position.y) > 2000:
        queue_free()
