extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _on_cat_accessories_pressed():
	print(Global.selectedAccessory)
	if Global.selectedAccessory == "Tophat":
		$".".visible = true
	else :
		$".".visible = false
