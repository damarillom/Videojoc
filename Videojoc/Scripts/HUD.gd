extends CanvasLayer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	Global.GUI = self
	
func update_GUI():
	var lab = get_node("Barra/labscore")
	lab.set_text(String(Global.score))


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass