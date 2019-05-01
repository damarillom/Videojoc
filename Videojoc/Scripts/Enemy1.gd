extends Area2D

func _on_Area2D_body_entered(body):
	take_damage(1)
	
	"""Global.health =-1
	if Global.health == 0:
		Global.GameState.end_game()"""
	
func take_damage(count):
	Global.health -= count
	if Global.health <= 0:
		Global.health = 0
		Global.GameState.end_game()
		"""emit_signal(died)"""

	emit_signal("health_changed", Global.health)


onready var target = $"../Player"




func damage_target(target, damage):
	target.take_damage(damage)




func _on_Player_died():
	target = null
