extends Node2D

#En ready mostramos la puntuacion en un label, ademas le indicamos que la variable de score vuelva a 0
func _ready():
	var lab = get_node("score")
	lab.set_text(String(Global.score))
	Global.score = 0

#Al pulsar Next Level comprobamos el nivel actual y le decimos que pase al siguiente
func _on_TextureButton_pressed():
	if (Global.actualLevel == 1):
		get_tree().change_scene(Global.level2)
	if (Global.actualLevel == 2):
		get_tree().change_scene(Global.level3)

#Al pulsar el botón le indicamos que cambie de escena a la escena del menu
func _on_TextureButton2_pressed():
	get_tree().change_scene(Global.menu)
