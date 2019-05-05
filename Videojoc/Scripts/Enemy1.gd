extends Area2D

#Si el Player interactua con el enemigo llamamos a la funcion end_game del nivel actual
func _on_Area2D_body_entered(body):
	Global.GameState.end_game()
