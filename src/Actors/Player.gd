extends KinematicBody2D

export (int) var move_speed = 100

var velocity = Vector2.ZERO

func _physics_process(delta):
	var direction = Vector2.ZERO
	
	direction.x = Input.get_action_raw_strength("move_right") - Input.get_action_raw_strength("move_left")
	direction.y = Input.get_action_raw_strength("move_down") - Input.get_action_raw_strength("move_up")
	
	velocity = direction * move_speed
	
	velocity = move_and_slide(velocity)
