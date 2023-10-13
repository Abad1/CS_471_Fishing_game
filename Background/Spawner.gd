extends Node2D
# Spawner.gd
# Spawns Entity on Timer
# Does nothing else

@export var fishObject = preload("res://Entities/Fish/fish.tscn")
@export var barrelObject = preload("res://Entities/Barrel/barrel.tscn")
var screen_size

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	var fish = fishObject.instantiate()
	var barrel = barrelObject.instantiate()
	barrel.position.x = randf()
	if (randf_range(1,100) < 50):
		fish.position.x = 0 #-(screen_size.x)/2 #randf_range(-500,500)
	else:
		fish.position.x = screen_size.x
	fish.position.y = randf_range(250,screen_size.y - 100) #randf_range(-500,500)
	add_child(fish)
