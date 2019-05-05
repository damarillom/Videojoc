extends Node2D

#Cambiamos a la pantalla de selección de nivel
func _on_TextureButton_pressed():
	get_tree().change_scene(Global.menuLevels)

#Cerramos el juego
func _on_TextureButton3_pressed():
	get_tree().quit()

#Cambiamos a la pantala de MaxScore
func _on_TextureButton2_pressed():
	get_tree().change_scene(Global.maxScore)
