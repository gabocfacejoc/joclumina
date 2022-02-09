extends KinematicBody2D

const MOVE_SPEED = 500

var velocity = Vector2.ZERO

func _physics_process(delta):
	if Input.is_action_pressed("ui_up"):
		velocity.y = -1
	elif Input.is_action_pressed("ui_down"):
		velocity.y = 1
	else:
		velocity.y = 0
	if Input.is_action_pressed("ui_left"):
		velocity.x = -1
	elif Input.is_action_pressed("ui_right"):
		velocity.x = 1
	else:
		velocity.x = 0
	velocity = velocity.normalized()
	move_and_collide(velocity*MOVE_SPEED*delta)
	var look_vec = get_global_mouse_position() - global_position
	global_rotation = atan2(look_vec.y, look_vec.x)
