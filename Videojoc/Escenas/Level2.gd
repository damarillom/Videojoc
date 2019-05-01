extends Node2D

func _ready():
	Global.GameState = self
	Global.actualLevel = 2;

func end_game():
	get_tree().change_scene(Global.gameOver)
	
func win_game():
	print("ganaste")
	get_tree().change_scene(Global.gameWin)
