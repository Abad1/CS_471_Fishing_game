extends Node2D


var score = 0
var bait = 3

@export var hookObj = preload("res://Hook/hook.tscn").instantiate()
# Called when the node enters the scene tree for the first time.
func _ready():
	updateUI()
	add_child(hookObj)
	var hook = get_node("Hook")
	hook.hit.connect(_on_hit)
	hook.score.connect(_on_score)

func updateUI():
	var scoreLabel = $UI/Score
	var baitLabel = $UI/Bait
	scoreLabel.text = "Fish: %s" % score
	baitLabel.text = "Bait: %s" % bait


func gameOver():
	$Spawner/Timer.stop()
	
func _on_hit():
	if bait > 1:
		bait -= 1
	else:
		bait -= 1
		gameOver();
	updateUI()

func _on_score():
	score += 1
	updateUI()
 
