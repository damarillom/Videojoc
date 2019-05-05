extends Node2D

var timer = null
func _ready():
	Global.GameState = self
	Global.actualLevel = 3;
	timer = Timer.new()
	timer.set_autostart(true)
	#timer.set_one_shot(true)
	timer.set_wait_time(1)
	timer.connect("timeout", self, "on_timeout_complete")
	add_child(timer)
	
func on_timeout_complete():
	Global.score += 100
	print(Global.score)
	Global.GUI.update_GUI()
	
func end_game():
	#Global.score = 0
	var file = File.new()
	file.open(Global.json, file.READ)
	var json = file.get_as_text()
	var json_result = JSON.parse(json).result
	file.close()
	print(json_result["score3"])
	if (Global.score > json_result["score3"]):
		json_result["score3"] = Global.score
		file = File.new()
		file.open(Global.json, file.WRITE)
		file.store_line(JSON.print(json_result, "  ", true))
		file.close()
	get_tree().change_scene(Global.gameOver)
	
func win_game():
	print("ganaste")
	#Global.score = 0
	var file = File.new()
	file.open(Global.json, file.READ)
	var json = file.get_as_text()
	var json_result = JSON.parse(json).result
	file.close()
	print(json_result["score3"])
	if (Global.score > json_result["score3"]):
		json_result["score3"] = Global.score
		file = File.new()
		file.open(Global.json, file.WRITE)
		file.store_line(JSON.print(json_result, "  ", true))
		file.close()
	get_tree().change_scene(Global.endGame)
