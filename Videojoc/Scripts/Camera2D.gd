extends Camera2D

var timer = null

#Aquí hacemos que cuando presione el boton de la pantalla el juego cuente como qu epulsa la tecla de salto
#Mediante tambien ejecutamos un timer
func _on_Jump_pressed():
	print("Hola")
	Input.action_press("ui_up")
	timer = Timer.new()
	timer.set_autostart(true)
	#timer.set_one_shot(true)
	timer.set_wait_time(0.1)
	timer.connect("timeout", self, "on_timeout_complete")
	add_child(timer)

#Aquí ejecutamos el final del tiemr donde le decimos que ya no se esta pulsando la tecla de salto
func on_timeout_complete():
	Input.action_release("ui_up")