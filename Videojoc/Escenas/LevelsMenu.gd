extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_pressed():
	get_tree().change_scene(Global.level1)


func _on_TextureButton2_pressed():
	get_tree().change_scene(Global.level2)


func _on_TextureButton3_pressed():
	get_tree().change_scene(Global.level3)
