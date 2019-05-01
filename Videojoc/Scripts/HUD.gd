extends HBoxContainer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var number_label = $Contador/Fondo/Numero
onready var bar = $TextureProgress
onready var tween = $Tween

var animated_health = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	var player_health = Global.health
	bar.value = player_health
	update_health(3)



func _on_Player_health_changed(player_health):
	update_health(player_health)
	
	
func update_health(new_value):
	tween.interpolate_property(self, "animated_health", animated_health, new_value, 0.6, Tween.TRANS_LINEAR, Tween.EASE_IN)
	if not tween.is_active():
		tween.start()

func _process(delta):
	var round_value = round(animated_health)
	number_label.text = str(round_value)
	bar.value = round_value


func _on_Player_died():
	var start_color = Color(1.0, 1.0, 1.0, 1.0)
	var end_color = Color(1.0, 1.0, 1.0, 0.0)
	tween.interpolate_property(self, "modulate", start_color, end_color, 1.0, Tween.TRANS_LINEAR, Tween.EASE_IN)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

