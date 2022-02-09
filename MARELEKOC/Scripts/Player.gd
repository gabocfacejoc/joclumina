extends KinematicBody2D

var gravity = 9.8
var speed = 1000

var jump_speed = 500


var velocity = Vector2.ZERO

func _physics_process(delta):
	velocity.y += gravity
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = -jump_speed
	if Input.is_action_pressed("right"):
		velocity.x = speed
	elif Input.is_action_pressed("left"):
		velocity.x = -speed
	else:
		velocity.x = 0
	velocity = move_and_slide(velocity, Vector2.UP)


