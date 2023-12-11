extends LineEdit


# Called when the node enters the scene tree for the first time.
func _ready():
	$".".text = Global.lineText


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
