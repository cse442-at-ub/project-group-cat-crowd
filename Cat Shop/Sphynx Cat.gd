extends Button

func _ready():
	$".".disabled = Global.cat_purchased["Sphynx"]

func _on_pressed():
	if Global.cat_coins >= 5000:
		Global.cat_coins = Global.cat_coins - 5000
		Global.cat_purchased["Sphynx"] = true
		Global.catsAvailable[7] = true
		$".".disabled = Global.cat_purchased["Sphynx"]
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
