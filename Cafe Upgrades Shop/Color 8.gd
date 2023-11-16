extends Button

func _ready():
	$".".disabled = Global.color_purchased["Color 8"]

func _on_pressed():
	if Global.cat_coins >= 5000:
		Global.cat_coins = Global.cat_coins - 5000
		Global.color_purchased["Color 8"] = true
		$".".disabled = Global.color_purchased["Color 8"]
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
