extends KinematicBody2D

var motion=Vector2()
const SPEED = 400 #750


const JUMP_SPEED = -650  #-1750
const UP = Vector2(0,-1)
const GRAVITY = 750 #1000  # 3600
export var world_limit = 500
func _ready():
	Global.Player = self
	print("hola")

#Creamos la fisicas del jugador
func  _physics_process(delta):
	fall(delta)
	run()
	jump()
	move_and_slide(motion, UP)
	
#Establecemos los parametros del salto
func fall(delta):
	if is_on_floor() or is_on_ceiling():
		motion.y = 0
	else:
		motion.y += GRAVITY * delta
		#motion.x = 0
	if position.y > world_limit:
		Global.GameState.end_game()
	
#Establecemos el movimiento del jugador		
func run():
	motion.x = SPEED
	if is_on_floor():
		$AnimatedSprite.play("Walk")
		
#Establecemos el salto del jugador	
func jump():
	if is_on_floor() and Input.is_action_pressed("ui_up"):
		motion.y = JUMP_SPEED
		$AnimatedSprite.play("Jump")
		#Global.jump_sfx.play()

