extends Button

func _ready():
	$".".disabled = Global.cat_purchased["Persian"]

func _on_pressed():
	if Global.cat_coins >= 1000:
		Global.cat_coins = Global.cat_coins - 1000
		Global.cat_purchased["Persian"] = true
		$".".disabled = Global.cat_purchased["Persian"]
		Global.catsAvailable[2] = true
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
