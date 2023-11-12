extends Node2D

var positionStart: Vector2
var positionEnd: Vector2
var threshold = 500
var xCount = 0
var yCount = 0
var cutVeggies = []
var currVeggie
var cutCount = 0
var veggieCount = 0

var tom = 1
var onion = 2
var cucumber = 3
var corn = 4

# Called when the node enters the scene tree for the first time.
func _ready():
	if GlobalVeggies.onion:
		veggieCount += 1
	if GlobalVeggies.cucumber:
		veggieCount += 1
	if GlobalVeggies.corn:
		veggieCount += 1
	if GlobalVeggies.tomato:
		veggieCount += 1
		cutCount += 1
		$Tomato/AnimationPlayer.play("tomato")
		currVeggie = "tomato"
		cutVeggies.append(tom)
		$horizontalLine.show()
		$Cut.show()
	if GlobalVeggies.onion and cutCount == 0:
		cutCount += 1
		$Onion/AnimationPlayer.play("onion")
		cutVeggies.append(onion)
		currVeggie = "onion"
		$horizontalLine.show()
		$Cut.show()
	if GlobalVeggies.cucumber and cutCount == 0:
		cutCount += 1
		$Cucumber/AnimationPlayer.play("cucumber")
		cutVeggies.append(cucumber)
		currVeggie = "cucumber"
		$verticalLine.show()
		$Cut.show()
	if GlobalVeggies.corn and cutCount == 0:
		cutCount += 1
		$Corn/AnimationPlayer.play(corn)
		cutVeggies.append("corn")
		currVeggie = "corn"
		$verticalLine.show()
		$Cut.show()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _input(event):
	if event is InputEventScreenTouch:
		if event.is_pressed():
			positionStart = event.position
		else:
			positionEnd = event.position
			touchDirection()
		if xCount == 3 or yCount == 3:
			cutVeggie()
		
func touchDirection():
	var motion := positionEnd - positionStart
	var direction = null
	
	if motion.length_squared() > threshold:
		if abs(motion.x) > abs(motion.y):
			direction = "HORIZONTAL"
			xCount += 1
		if abs(motion.x) < abs(motion.y):
			direction = "VERTICAL"
			yCount += 1
	return direction

func cutVeggie():
	if currVeggie == "corn" or currVeggie == "cucumber":
		if yCount == 3:
			$"Great!".show()
			yCount = 0
			xCount = 0
			nextVeggie()
			
	else:
		if xCount >= 3:
			$horizontalLine.hide()
			$verticalLine.show()
			if xCount == 3:
				xCount += 1
				yCount = 0
			if yCount == 3:
				$"Great!".show()
				yCount = 0
				xCount = 0
				nextVeggie()

func nextVeggie():
	if currVeggie == "tomato":
		$verticalLine.hide()
		$horizontalLine.hide()
		$Tomato/AnimationPlayer.play("tomLeave")
		await get_tree().create_timer(1.0).timeout
		$"Great!".hide()
	elif currVeggie == "onion":
		$verticalLine.hide()
		$horizontalLine.hide()
		$Onion/AnimationPlayer.play("onionLeave")
		await get_tree().create_timer(1.0).timeout
		$"Great!".hide()
	elif currVeggie == "cucumber":
		$verticalLine.hide()
		$horizontalLine.hide()
		$Cucumber/AnimationPlayer.play("cucLeave")
		await get_tree().create_timer(1.0).timeout
		$"Great!".hide()
	else:
		$verticalLine.hide()
		$horizontalLine.hide()
		$Corn/AnimationPlayer.play("cornLeave")
		await get_tree().create_timer(1.0).timeout
		$"Great!".hide()
	if cutCount < veggieCount:
		if GlobalVeggies.tomato and cutVeggies.find(tom) == -1:
			cutCount += 1
			$Tomato/AnimationPlayer.play("tomato")
			cutVeggies.append(tom)
			currVeggie = "tomato"
			$horizontalLine.show()
		elif GlobalVeggies.onion and cutVeggies.find(onion) == -1:
			cutCount += 1
			cutVeggies.append(onion)
			$Onion/AnimationPlayer.play("onion")
			currVeggie = "onion"
			$horizontalLine.show()
		elif GlobalVeggies.cucumber and cutVeggies.find(cucumber) == -1:
			cutCount += 1
			cutVeggies.append(cucumber)
			$Cucumber/AnimationPlayer.play("cucumber")
			currVeggie = "cucumber"
			$verticalLine.show()
		elif GlobalVeggies.corn and cutVeggies.find(corn) == -1:
			cutCount += 1
			cutVeggies.append(corn)
			$Corn/AnimationPlayer.play("corn")
			currVeggie = "corn"
			$verticalLine.show()
		else:
			pass
	else:
		get_tree().change_scene_to_file("res://Kitchen/cookingMinigame/cookingGame.tscn")
	pass
