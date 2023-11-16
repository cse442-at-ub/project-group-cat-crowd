extends Button

func _ready():
	$".".disabled = Global.color_purchased["Color 6"]

func _on_pressed():
	if Global.cat_coins >= 2250:
		Global.cat_coins = Global.cat_coins - 2250
		Global.color_purchased["Color 6"] = true
		$".".disabled = Global.color_purchased["Color 6"]
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
