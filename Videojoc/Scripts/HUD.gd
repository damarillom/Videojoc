extends CanvasLayer

func _ready():
	Global.GUI = self

#Mostramos la puntuación en el HUD
func update_GUI():
	var lab = get_node("Barra/labscore")
	lab.set_text(String(Global.score))
