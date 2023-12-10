extends Button

func _ready():
	$".".disabled = Global.color_purchased["Blue"]

func _on_pressed():
	if Global.cat_coins >= 1750:
		Global.cat_coins = Global.cat_coins - 1750
		Global.color_purchased["Blue"] = true
		$".".disabled = Global.color_purchased["Blue"]
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
