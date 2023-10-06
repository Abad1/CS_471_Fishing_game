extends Node2D
# Spawner.gd
# Spawns Entity on Timer
# Does nothing else

@export var entity_scene: PackedScene


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	print("TIMER!!!!!")
	var fish = entity_scene.instantiate()
	
	fish.position = Vector2(0,randf_range(0,50))
	add_child(fish)
