extends Node2D

var overlap = false
var count = 0
var coins = 0
var hasFlipped = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$"hitBox/moveBar".play("move-loop")
	$bar/hitArea.monitoring = true
	$bar/barArea.monitorable = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_button_pressed():
	if overlap == true and hasFlipped == false:
		$"Great!".show()
		count += 1
		hasFlipped = true
		$Niasnxff/flip.play("flip")
		if count == 3:
			$"hitBox/moveBar".pause()
			await get_tree().create_timer(0.5).timeout
			scoreboard()
		else:
			await get_tree().create_timer(1.0).timeout
			$"Great!".hide()
	else:
		GlobalVeggies.score -= 250


func _on_hit_area_area_shape_entered(_area_rid, _area, _area_shape_index, _local_shape_index):
	overlap = true


func _on_hit_area_area_shape_exited(_area_rid, _area, _area_shape_index, _local_shape_index):
	overlap = false
	hasFlipped = false

func scoreboard():
	$EndScreen.show()
	if GlobalVeggies.score < 0:
		GlobalVeggies.score = 0
	if GlobalVeggies.score >= 1000:
		$EndScreen/Star.show()
		coins += 100
	if GlobalVeggies.score >= 2000:
		$EndScreen/Star2.show()
		coins += 100
	if GlobalVeggies.score >= 3000:
		$EndScreen/Star3.show()
		coins += 100
	if GlobalVeggies.score >= 4000:
		$EndScreen/Star4.show()
		coins += 100
	if GlobalVeggies.score >= 5000:
		coins += 100
		$EndScreen/Star5.show()
	$EndScreen/coins.text = "+ " + str(coins) + " cat coins"
	Global.cat_coins += coins


func _on_continue_pressed():
	get_tree().change_scene_to_file("res://Kitchen/cookingMinigame/cookingGame.tscn")
