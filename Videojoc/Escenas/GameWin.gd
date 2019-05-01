extends Node2D

func _on_TextureButton_pressed():
	if (Global.actualLevel == 1):
		get_tree().change_scene(Global.level2)
	if (Global.actualLevel == 2):
		get_tree().change_scene(Global.level3)

func _on_TextureButton2_pressed():
	get_tree().change_scene(Global.menu)
