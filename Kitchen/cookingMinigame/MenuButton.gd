extends Button


func _on_pressed():
	if (not $"../IngredientMenu".visible):
		$"../IngredientMenu".show()
		self.hide()
	pass # Replace with function body.
