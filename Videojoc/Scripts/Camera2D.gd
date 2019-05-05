extends Camera2D

var timer = null


func _on_Jump_pressed():
	print("Hola")
	Input.action_press("ui_up")
	timer = Timer.new()
	timer.set_autostart(true)
	#timer.set_one_shot(true)
	timer.set_wait_time(0.1)
	timer.connect("timeout", self, "on_timeout_complete")
	add_child(timer)
	
func on_timeout_complete():
	Input.action_release("ui_up")