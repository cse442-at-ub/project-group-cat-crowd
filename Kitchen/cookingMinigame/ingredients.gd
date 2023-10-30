extends ColorRect



func _on_corn_button_pressed():
	$CornButton/Corn.visible = not $CornButton/Corn.visible
	pass


func _on_tom_button_pressed():
	$TomButton/tomato.visible = not $TomButton/tomato.visible
	pass # Replace with function body.


func _on_zucc_button_pressed():
	$ZuccButton/Zuccini.visible = not $ZuccButton/Zuccini.visible
	pass # Replace with function body.


func _on_onion_button_pressed():
	$OnionButton/Onion.visible = not $OnionButton/Onion.visible
	pass # Replace with function body.


func _on_exit_button_pressed():
	self.hide()
	$"../MenuButton".show()
	pass # Replace with function body.
