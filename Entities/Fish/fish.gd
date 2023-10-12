#Fish.gd
extends Node2D


@export var speed = 400 # How fast the player will move (pixels/sec).
var screen_size # Size of the game window.
var velocity = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	velocity = Vector2(1,0)
	if (position.x > 0):
		get_node("Sprite2D").set_flip_h(true)
		velocity.x = -1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += speed * velocity * delta
	#position = position.clamp(Vector2.ZERO, screen_size)






func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()


func _on_body_entered(body):
	print("FISH")
