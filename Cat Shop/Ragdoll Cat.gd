extends Button

func _ready():
	$".".disabled = Global.cat_purchased["Ragdoll"]

func _on_pressed():
	if Global.cat_coins >= 2000:
		Global.cat_coins = Global.cat_coins - 2000
		Global.cat_purchased["Ragdoll"] = true
		Global.catsAvailable[3] = true
		$".".disabled = Global.cat_purchased["Ragdoll"]
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
