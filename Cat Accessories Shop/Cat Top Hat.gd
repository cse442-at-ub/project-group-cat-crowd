extends Button

func _ready():
	$".".disabled = Global.accessory_purchased["Tophat"]

func _on_pressed():
	if Global.cat_coins >= 1500:
		Global.cat_coins = Global.cat_coins - 1500
		Global.accessory_purchased["Tophat"] = true
		$".".disabled = Global.accessory_purchased["Tophat"]
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
