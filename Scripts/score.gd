extends Label

# Sets the name to be used by other scripts
class_name Score
# Creates a score variable that can be accessed by any script
static var score: int = 0

# The function that runs at the beginning of the game
func _ready():
	# Set the score variable to 0
	score = 0

# The function that runs every frame, with "Delta" being the current frame
func _process(delta):
	# Changes the text of the attatched node to the current score
	text = str(score)
