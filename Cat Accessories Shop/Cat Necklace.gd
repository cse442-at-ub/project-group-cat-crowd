extends Button

func _ready():
	$".".disabled = Global.accessory_purchased["Necklace"]

func _on_pressed():
	if Global.cat_coins >= 2250:
		Global.cat_coins = Global.cat_coins - 2250
		Global.accessory_purchased["Necklace"] = true
		$".".disabled = Global.accessory_purchased["Necklace"]
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
