extends TouchScreenButton

func _ready():
	$"../Arrow/AnimationPlayer".play("bounce")

func _on_pressed():
	get_tree().change_scene_to_file("res://Kitchen/cookingMinigame/cookingGame.tscn")
