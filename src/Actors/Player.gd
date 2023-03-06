extends Actor

export (int) var move_speed = 100


"""
TO DISCUSS

When player move diagonally it dosn't feel natural;
also move faster then when he is moving horizontaly or verticaly.

We could repair it by basing your movement on circle and not a square.
"""

func _physics_process(delta):
	var direction = Vector2.ZERO
	
	direction.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	direction.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")

	velocity = direction * move_speed * (max(speed, 1) / 50.0)
