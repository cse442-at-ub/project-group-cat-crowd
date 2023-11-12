extends Button

func _ready():
	$".".disabled = Global.shop_items["C4"]

func _on_pressed():
	if Global.cat_coins >= 1750:
		Global.cat_coins = Global.cat_coins - 1750
		Global.shop_items["C4"] = true
		$".".disabled = Global.shop_items["C4"]
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
