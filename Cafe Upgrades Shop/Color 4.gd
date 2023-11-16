extends Button

func _ready():
	$".".disabled = Global.color_purchased["Color 4"]

func _on_pressed():
	if Global.cat_coins >= 1750:
		Global.cat_coins = Global.cat_coins - 1750
		Global.color_purchased["Color 4"] = true
		$".".disabled = Global.color_purchased["Color 4"]
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
