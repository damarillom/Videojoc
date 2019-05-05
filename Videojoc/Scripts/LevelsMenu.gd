extends Node2D

#Cambiamos a la escena de level1
func _on_TextureButton_pressed():
	get_tree().change_scene(Global.level1)

#Cambiamos a la escena de level2
func _on_TextureButton2_pressed():
	get_tree().change_scene(Global.level2)

#Cambiamos a la escena de level3
func _on_TextureButton3_pressed():
	get_tree().change_scene(Global.level3)
