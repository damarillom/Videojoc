extends Area2D

func _ready():
	pass 

func _on_Portal_body_entered(body):
	Global.GameState.win_game()
