extends Node2D

func _on_TextureButton_pressed():
	print("hole")
	get_tree().change_scene("res://Videojoc/Escenas/Menu.tscn")



func _on_TextureButton3_pressed():
	get_tree().quit()

