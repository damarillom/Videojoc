extends Node2D
func _ready():
	var file = File.new()
	file.open(Global.json, file.READ)
	var json = file.get_as_text()
	var json_result = JSON.parse(json).result
	file.close()
	var score1 = get_node("score1")
	score1.set_text(String(json_result["score1"]))
	var score2 = get_node("score2")
	score2.set_text(String(json_result["score2"]))
	var score3 = get_node("score3")
	score3.set_text(String(json_result["score3"]))
	
func _on_TextureButton_pressed():
	get_tree().change_scene(Global.menu)