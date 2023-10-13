extends Area2D
var fishOn = false
signal score
signal hit
@export var speed = 400 # How fast the player will move (pixels/sec).
var screen_size # Size of the game window.

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	var pixel_shift = 200 # 200 Pixel constant for aligning fishhook
	position.x = -45 #TODO: Automatically adjust to area
	position.y = get_viewport().get_mouse_position().y - pixel_shift
	if fishOn == true:
		$AnimatedSprite2D.frame = 1
		if position.y <= 20: #TODO: Look at setting a area for hook to pass instead of hardcode
			fishOn = false
			score.emit()
			#$AnimatedSprite2D.frame = 0
	else:
		$AnimatedSprite2D.frame = 0

func _on_area_entered(area):
	#print(area.get_groups())
	#print("Fish?")
	hit.emit()
	if area.get_groups() == [&"Fish"] && fishOn == false:
		print("Fish On!")
		fishOn = true
		area.queue_free()
	else:
		print("terror on fishing")
	
	
