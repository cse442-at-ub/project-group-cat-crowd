extends Button

func _ready():
	$".".disabled = Global.shop_items["Scottish"]

func _on_pressed():
	if Global.cat_coins >= 2500:
		Global.cat_coins = Global.cat_coins - 2500
		Global.shop_items["Scottish"] = true
		$".".disabled = Global.shop_items["Scottish"]
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
