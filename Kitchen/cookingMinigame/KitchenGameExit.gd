extends Button

func _on_pressed():
	if $"ColorRect/Carrot".visible or $"ColorRect/Corn".visible or $"ColorRect/Potato".visible or $"ColorRect/Tomato".visible or $"ColorRect/Cucumber".visible or $"ColorRect/Onion".visible:
		get_tree().change_scene_to_file("res://Kitchen/kitchen_screen.tscn")
