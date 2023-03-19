extends KinematicBody2D

var velocity = Vector2.ZERO
var move_speed = 950
var gravity = 1000
var jump_force = -150
var friction = 0.25
var speed = 250

func _physics_process(delta: float): 
	velocity.y += gravity * delta
	
	var move_direction = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))

#	if Input.is_action_just_pressed("jump"):
#		velocity.y = jump_force

		
	velocity.x = speed * move_direction
	
	
	if is_on_floor():
		if Input.is_action_just_pressed("jump"):
			velocity.y = -move_speed
		
		if velocity.x == 0:
				velocity.x = lerp(velocity.x, 0, friction)
		if Input.is_action_just_released("jump") and velocity.y < -move_speed/2:
			velocity.y = 0
			velocity.y = move_speed/2
				
#	move_and_collide(velocity)
	move_and_slide(velocity, Vector2.UP)
	

func _ready():
	pass 
