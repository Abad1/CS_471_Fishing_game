extends Node2D

@export var hookObj = preload("res://Hook/hook.tscn").instantiate()
# Called when the node enters the scene tree for the first time.
func _ready():
	add_child(hookObj)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
