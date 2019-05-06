extends Node2D

var timer = null

#Indicamos en global que este nivel sea el GameState y activamos un timer
func _ready():
	Global.GameState = self
	Global.actualLevel = 2;
	timer = Timer.new()
	timer.set_autostart(true)
	#timer.set_one_shot(true)
	timer.set_wait_time(1)
	timer.connect("timeout", self, "on_timeout_complete")
	add_child(timer)
	
#Usamos el timer para subir la puntuacion 100 puntos cada segundo
func on_timeout_complete():
	Global.score += 100
	print(Global.score)
	Global.GUI.update_GUI()
	
#Cuando el jugador muere leemos el JSON y comprobamos si la puntuacion actual es mas alta que la maxima, si es así la sobreescribimos en el JSON
#Ademas cambiamos a la escena de GameOver	
func end_game():
	#Global.score = 0
	var file = File.new()
	file.open(Global.json, file.READ)
	var json = file.get_as_text()
	var json_result = JSON.parse(json).result
	file.close()
	print(json_result["score2"])
	if (Global.score > json_result["score2"]):
		json_result["score2"] = Global.score
		file = File.new()
		file.open(Global.json, file.WRITE)
		file.store_line(JSON.print(json_result, "  ", true))
		file.close()
	get_tree().change_scene(Global.gameOver)
	
#Cuando el jugador supera el nivel leemos el JSON y si ha superado al puntiacion más alta la sobreescribimos
#Ademas cambiamos la escena de GameWin
func win_game():
	print("ganaste")
	#Global.score = 0
	var file = File.new()
	file.open(Global.json, file.READ)
	var json = file.get_as_text()
	var json_result = JSON.parse(json).result
	file.close()
	print(json_result["score2"])
	if (Global.score > json_result["score2"]):
		json_result["score2"] = Global.score
		file = File.new()
		file.open(Global.json, file.WRITE)
		file.store_line(JSON.print(json_result, "  ", true))
		file.close()
	get_tree().change_scene(Global.gameWin)
