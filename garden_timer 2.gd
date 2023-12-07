extends Node

var growTom = false
var growCuc = false
var growCorn = false
var growPot = false
var growCarr = false
var growOnion = false

var tomTimer = 0
var cucTimer = 0
var cornTimer = 0
var potTimer = 0
var carrTimer = 0
var onionTimer = 0

func _ready():
	set_process(true)
	
func _process(delta):
	if growTom:
		tomTimer += delta
	if growCuc:
		cucTimer += delta
	if growCorn:
		cornTimer += delta
	if growPot:
		potTimer += delta
	if growCarr:
		carrTimer += delta
	if growOnion:
		onionTimer += delta
