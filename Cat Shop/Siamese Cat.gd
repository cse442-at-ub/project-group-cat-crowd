extends Button

func _ready():
	$".".disabled = Global.cat_purchased["Siamese"]

func _on_pressed():
	if Global.cat_coins >= 500:
		Global.cat_coins = Global.cat_coins - 500
		Global.cat_purchased["Siamese"] = true
		$".".disabled = Global.cat_purchased["Siamese"]
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
