extends Node2D

func _ready():
	var lab = get_node("score")
	lab.set_text(String(Global.score))
	Global.score = 0

func _on_TextureButton_pressed():
	get_tree().change_scene(Global.menu)