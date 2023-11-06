extends Button

func _ready():
	$".".disabled = Global.shop_items["C7"]

func _on_pressed():
	if Global.cat_coins >= 2500:
		Global.cat_coins = Global.cat_coins - 2500
		Global.shop_items["C7"] = true
		$".".disabled = Global.shop_items["C7"]
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
