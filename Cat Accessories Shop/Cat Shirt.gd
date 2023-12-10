extends Button

func _ready():
	$".".disabled = Global.accessory_purchased["Shirt"]

func _on_pressed():
	if Global.cat_coins >= 500:
		Global.cat_coins = Global.cat_coins - 500
		Global.accessory_purchased["Shirt"] = true
		$".".disabled = Global.accessory_purchased["Shirt"]
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
