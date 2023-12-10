extends Area2D

var overlap = false
var count = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$"../../hitBox/moveBar".play("move-loop")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _unhandled_input(event):
	if overlap == true and event is InputEventScreenTouch:
		print("Great")
		count += 1
		if count > 3:
			get_tree().change_scene_to_file("res://Kitchen/cookingMinigame/cookingGame.tscn")
		else:
			$"../../hitBox/moveBar".stop()
			$"../../hitBox/moveBar".play("move-loop")


func _on_body_entered(body):
	if body == $bar:
		overlap = true
		print(overlap)
	

func _on_body_exited(body):
	if body == $bar:
		overlap = false
