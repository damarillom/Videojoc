extends Area2D

func _ready():
	pass 

#Llamamos a la funcion win_game del nivel actual
func _on_Portal_body_entered(body):
	Global.GameState.win_game()
