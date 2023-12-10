extends Button

func _ready():
	$".".disabled = Global.accessory_purchased["BFF"]

func _on_pressed():
	if Global.cat_coins >= 1000:
		Global.cat_coins = Global.cat_coins - 1000
		Global.accessory_purchased["BFF"] = true
		$".".disabled = Global.accessory_purchased["BFF"]
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
