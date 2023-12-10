extends Node2D

var overlap = false
var count = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$"hitBox/moveBar".play("move-loop")
	$bar/hitArea.monitoring = true
	$bar/barArea.monitorable = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_button_pressed():
	if overlap == true:
		$"Great!".show()
		count += 1
		$Niasnxff/flip.play("flip")
		if count == 3:
			$"hitBox/moveBar".pause()
			await get_tree().create_timer(0.5).timeout
			get_tree().change_scene_to_file("res://Kitchen/cookingMinigame/cookingGame.tscn")
		else:
			await get_tree().create_timer(1.0).timeout
			$"Great!".hide()


func _on_hit_area_area_shape_entered(_area_rid, _area, _area_shape_index, _local_shape_index):
	overlap = true


func _on_hit_area_area_shape_exited(_area_rid, _area, _area_shape_index, _local_shape_index):
	overlap = false
