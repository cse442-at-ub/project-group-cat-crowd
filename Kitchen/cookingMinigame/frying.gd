extends Node2D

var overlap = false
var count = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$"hitBox/moveBar".play("move-loop")
	$bar/hitArea.monitoring = true
	$bar/barArea.monitorable = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $

func _unhandled_input(event):
	if overlap == true and event is InputEventScreenTouch:
		print("Great")
		count += 1
		if count > 3:
			get_tree().change_scene_to_file("res://Kitchen/cookingMinigame/cookingGame.tscn")
		else:
			$"hitBox/moveBar".stop()
			$"hitBox/moveBar".play("move-loop")


func _on_hit_area_body_entered(body):
	overlap = true
	print(overlap)

func _on_hit_area_body_exited(body):
	overlap = false
	

