extends Line2D

func _on_start_pressed():
	$Timer.start()
	$"../Start".visible = false

func downcounting():
	points[1].x -= 1

func when_time_is_up():
	return points[1].x == 0

func _on_timer_timeout():
	downcounting()
	if when_time_is_up():
		$Timer.stop()
		Global.cat_coins = Global.cat_coins + 500
