extends Node2D

var positionStart: Vector2
var positionEnd: Vector2
var threshold = 500
var xCount = 0
var yCount = 0
var veggieCount = 0
var currVeggie = null

# Called when the node enters the scene tree for the first time.
func _ready():
	if GlobalVeggies.tomato:
		veggieCount += 1
		$Tomato/AnimationPlayer.play("tomato")
		currVeggie = "tomato"
	if GlobalVeggies.onion and veggieCount == 0:
		veggieCount += 1
		$Onion/AnimationPlayer.play("onion")
		currVeggie = "onion"
	if GlobalVeggies.cucumber and veggieCount == 0:
		veggieCount += 1
		$Cucumber/AnimationPlayer.play("cucumber")
		currVeggie = "cucumber"
	if GlobalVeggies.corn and veggieCount == 0:
		veggieCount += 1
		$Corn/AnimationPlayer.play("corn")
		currVeggie = "corn"

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
	if currVeggie == "corn":
		$verticalLine.visible
		$Cut.visible
		if yCount == 3:
			print("GOOD")
			yCount = 0
			xCount = 0
			$verticalLine.hide()
			$Cut.hide()
	elif currVeggie == "cucumber":
		$horizontalLine.visible
		$Cut.visible
		if xCount == 3:
			print("GREAT")
			yCount = 0
			xCount = 0
			$horizontalLine.hide()
			
	else:
		$horizontalLine.visible
		$Cut.visible
		if xCount == 3:
			print("GREAT")
			yCount = 0
			xCount = 0
			$horizontalLine.hide()
		$verticalLine.visible
		$Cut.visible
		if yCount == 3:
			print("GOOD")
			yCount = 0
			xCount = 0
			$verticalLine.hide()
			$Cut.hide()
