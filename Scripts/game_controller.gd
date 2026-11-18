extends Node2D

@export var shape_scenes: Array[PackedScene]
@export var spawn_delay: float = 2
@export var spawn_time: float = 3
@export var game_over_canvas: CanvasLayer

var repeating: bool = true

# The function that runs when the game is loaded
func _ready():
	randomize()
	spawn()

# The function acts like a coroutine, running to make shapes continuously spawn
func spawn():
	# ---------------------
	# TODO 3
	# Wait to spawn the first shape
	# ---------------------
	await get_tree().create_timer(spawn_delay).timeout
	while repeating:
		# ---------------------
		# TODO 4
		# Instantiate a random shape scene, then wait until spawning the next shape
		# ---------------------
		var random_int: int = randi_range(0, shape_scenes.size() - 1)
		add_child(shape_scenes[random_int].instantiate())
		# ---------------------
		# TODO 5
		# Wait until spawning the next shape
		# ---------------------
		await get_tree().create_timer(spawn_time).timeout

func game_over():
	# Stops the spawn code from running continuously
	repeating = false
	# Sets the game over canvas to be visible so the player can reset the game
	game_over_canvas.visible = true;
	# Freezes the time scale of the game so the player cant move around while the game is over
	Engine.time_scale = 0
