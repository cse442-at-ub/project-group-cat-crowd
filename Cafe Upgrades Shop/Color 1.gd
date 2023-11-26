extends Button

func _ready():
	$".".disabled = Global.color_purchased["Red"]

func _on_pressed():
	if Global.cat_coins >= 500:
		Global.cat_coins = Global.cat_coins - 500
		Global.color_purchased["Red"] = true
		$".".disabled = Global.color_purchased["Red"]
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
