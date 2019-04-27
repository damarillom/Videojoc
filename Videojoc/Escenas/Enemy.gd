extends KinematicBody2D

var motion=Vector2()
const SPEED = 400 #750


const JUMP_SPEED = -650  #-1750
const UP = Vector2(0,-1)
const GRAVITY = 750 #1000  # 3600
export var world_limit = 500
func _ready():
	#Global.Player = self
	print("hola")
	
func  _physics_process(delta):
	fall(delta)
	run()
	move_and_slide(motion, UP)
	
func fall(delta):
	if is_on_floor() or is_on_ceiling():
		motion.y = 0
	else:
		motion.y += GRAVITY * delta
		#motion.x = 0
		
func run():
	"""if Input.is_action_pressed("ui_right") and not Input.is_action_pressed("ui_left"):
		motion.x = SPEED
		#$AnimatedSprite.play("run")
		#$AnimatedSprite.flip_h=false
	elif Input.is_action_pressed("ui_left") and not Input.is_action_pressed("ui_right"):
		motion.x = -SPEED
		#$AnimatedSprite.play("run")
		#$AnimatedSprite.flip_h=true
	else:
		motion.x = 0
		#$AnimatedSprite.play("idle")
		#Para que no se voltee cuando este parado
		#$AnimatedSprite.flip_h=false"""
	#if get_node("Enemy").is_on_screen():
	#if is_on_floor():
		#if get_node("..").is_on_screen():
	motion.x = -SPEED

	
func boost():
	motion.y = JUMP_SPEED * 2
	Global.jump_sfx.play()

func _on_Area2D_body_entered(body):
	print("pepe")
	#if (get_node(".").is_on_screen):
	Global.GameState.end_game()
