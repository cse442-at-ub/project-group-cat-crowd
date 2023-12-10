extends Button

func _ready():
	$".".disabled = Global.accessory_purchased["Tie"]

func _on_pressed():
	if Global.cat_coins >= 1750:
		Global.cat_coins = Global.cat_coins - 1750
		Global.accessory_purchased["Tie"] = true
		$".".disabled = Global.accessory_purchased["Tie"]
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
