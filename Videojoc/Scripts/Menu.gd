extends Node2D

func _on_TextureButton_pressed():
	print("hole")
	get_tree().change_scene(Global.menuLevels)

func _on_TextureButton3_pressed():
	get_tree().quit()

func _on_TextureButton2_pressed():
	get_tree().change_scene(Global.maxScore)
