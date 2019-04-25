extends KinematicBody2D

var motion=Vector2()
const SPEED = 400 #750


const JUMP_SPEED = -650  #-1750
const UP = Vector2(0,-1)
const GRAVITY = 750 #1000  # 3600
export var world_limit = 3000
func _ready():
	#Global.Player = self
	print("hola")
	
func  _physics_process(delta):
	fall(delta)
	run()
	jump()
	move_and_slide(motion, UP)
	
"""func _process(delta):
	update_animation(motion)
	
func update_animation(motion):
	$AnimatedSprite.update(motion)"""
	
	
func fall(delta):
	if is_on_floor() or is_on_ceiling():
		motion.y = 0
	else:
		motion.y += GRAVITY * delta
		#motion.x = 0
	if position.y > world_limit:
		#get_parent().end_game()
		Global.GameState.end_game()
	
		
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
	motion.x = SPEED
		
		
func jump():
	if is_on_floor() and Input.is_action_pressed("ui_up"):
		motion.y = JUMP_SPEED
		#$AnimatedSprite.play("jump")
		#Global.jump_sfx.play()
		
func hurt():
	motion.y = JUMP_SPEED
	Global.pain_sfx.play()
	
func boost():
	motion.y = JUMP_SPEED * 2
	Global.jump_sfx.play()
