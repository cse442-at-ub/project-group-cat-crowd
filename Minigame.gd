extends Node2D


func _on_start_pressed():
	$Timer.start()

func _on_timer_timeout():
	$ProgressBar.value+=1

func _on_back_to_lounge_pressed():
	get_tree().change_scene_to_file("res://lounge.tscn")


func _on_area_2d_area_entered(area):
	$Cat/AnimatedSprite2D.play()
	await get_tree().create_timer(2.0).timeout
	$Cat/AnimatedSprite2D.stop()
