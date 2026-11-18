extends Area2D

@export var move_speed: float = 10
var movement: float = 0

func _ready():
	Engine.time_scale = 1

# ---------------------
# TODO 1
# Write the _process method
# ------------------
func _process(_delta: float) -> void:
	movement = Input.get_axis("ui_left", "ui_right")

# ---------------------
# TODO 2
# Write the _physics_process method
# ---------------------
func _physics_process(delta: float) -> void:
	rotate(movement * delta * move_speed)

# ---------------------
# TODO 7
# Write the collide_into_shape method
# ---------------------
func collide_into_shape(_body: Area2D) -> void:
	get_node("/root/Main/GameController").game_over()
