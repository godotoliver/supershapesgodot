extends Button

# Attatches to the button as a signal to run when it is pressed
func _on_pressed():
	# Reloads the scene back to it's default state
	get_tree().reload_current_scene()
