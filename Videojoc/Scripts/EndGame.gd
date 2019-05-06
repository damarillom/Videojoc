extends Node2D

#En ready mostramos la puntuacion en un label, ademas le indicamos que la variable de score vuelva a 0
func _ready():
	var lab = get_node("score")
	lab.set_text(String(Global.score))
	Global.score = 0

#Al pulsar el botón le indicamos que cambie de escena a la escena del menu
func _on_TextureButton_pressed():
	get_tree().change_scene(Global.menu)