extends Area2D

# Sets how fast the shapes shrink in the scene
@export var shrink_speed: float = 5

# The function that starts when the scene starts
func _ready():
	# A function that keeps any random numbers from being the same every time the game is run
	randomize()
	# Picks a random rotation
	rotation = randf_range(0, 360)
	# Sets the starting scale to whatever it currently is times 10
	scale = Vector2.ONE * 10
	
# ---------------------
# TODO 6
# Write the _process method
# ---------------------
func _process(delta: float) -> void:
	scale -= Vector2.ONE * shrink_speed * delta
	
	if scale.x < 0.05:
		Score.score += 1
		queue_free()
