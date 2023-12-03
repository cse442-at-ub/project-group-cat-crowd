extends Node2D

var positionStart: Vector2
var positionEnd: Vector2
var threshold = 500
var xCount = 0
var yCount = 0
var currVeggie
var cutCount = 0
var veggieCount = 0

var veggieArray = []

# Called when the node enters the scene tree for the first time.
func _ready():
	for x in GlobalVeggies.currRecipe:
		veggieArray.append(x)
	currVeggie = veggieArray[0]
	enterAnim()
	
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
			cutCount += 1
			leaveAnim()
			if cutCount < veggieArray.size():
				currVeggie = veggieArray[cutCount]
				enterAnim()

func enterAnim():
	match currVeggie:
		"tomato":
			$Tomato/AnimationPlayer.play("enter")
			GlobalVeggies.tomato -= 1
		"onion":
			$Onion/AnimationPlayer.play("enter")
			GlobalVeggies.onion -= 1
		"corn":
			$Corn/AnimationPlayer.play("enter")
			GlobalVeggies.corn -= 1
		"cucumber":
			$Cucumber/AnimationPlayer.play("enter")
			GlobalVeggies.cucumber -= 1
		"potato":
			$Potato/AnimationPlayer.play("enter")
			GlobalVeggies.potato -= 1
		"carrot":
			$Carrot/AnimationPlayer.play("enter")
			GlobalVeggies.carrot -= 1
	$horizontalLine.show()
	$Cut.show()
	
func leaveAnim():
	match currVeggie:
		"tomato":
			$Tomato/AnimationPlayer.play("leave")
		"onion":
			$Onion/AnimationPlayer.play("leave")
		"corn":
			$Corn/AnimationPlayer.play("leave")
		"cucumber":
			$Cucumber/AnimationPlayer.play("leave")
		"potato":
			$Potato/AnimationPlayer.play("leave")
		"carrot":
			$Carrot/AnimationPlayer.play("leave")
	$verticalLine.hide()
	$horizontalLine.hide()
	await get_tree().create_timer(1.0).timeout
	$"Great!".hide()
	if cutCount == veggieArray.size():
		get_tree().change_scene_to_file("res://Kitchen/cookingMinigame/frying.tscn")
