extends Button

func _ready():
	$".".disabled = Global.color_purchased["Purple"]

func _on_pressed():
	if Global.cat_coins >= 2000:
		Global.cat_coins = Global.cat_coins - 2000
		Global.color_purchased["Purple"] = true
		$".".disabled = Global.color_purchased["Purple"]
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
