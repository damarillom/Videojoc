extends Node2D

func _on_TextureButton_pressed():
	get_tree().change_scene(Global.level1)

func _on_TextureButton2_pressed():
	get_tree().change_scene(Global.menu)
