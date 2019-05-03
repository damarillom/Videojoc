extends Node2D

var timer = null
func _ready():
	Global.GameState = self
	Global.actualLevel = 2;
	timer = Timer.new()
	timer.set_autostart(true)
	#timer.set_one_shot(true)
	timer.set_wait_time(1)
	timer.connect("timeout", self, "on_timeout_complete")
	add_child(timer)
	
func on_timeout_complete():
	Global.score += 100
	print(Global.score)
	
func end_game():
	#Global.score = 0
	get_tree().change_scene(Global.gameOver)
	
func win_game():
	print("ganaste")
	#Global.score = 0
	get_tree().change_scene(Global.gameWin)
