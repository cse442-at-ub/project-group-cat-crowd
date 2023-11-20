extends Button

func _ready():
	$".".disabled = Global.cat_purchased["Scottish"]

func _on_pressed():
	if Global.cat_coins >= 2500:
		Global.cat_coins = Global.cat_coins - 2500
		Global.cat_purchased["Scottish"] = true
		Global.catsAvailable[5] = true
		$".".disabled = Global.cat_purchased["Scottish"]
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
