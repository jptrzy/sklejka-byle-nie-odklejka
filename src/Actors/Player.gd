extends Actor

export (int) var move_speed = 100

export (PackedScene) var bullet_scene;

export (float) var seconds_per_shoot = 0.1;
var time_to_shoot := .0;

func _process(delta: float) -> void:
	var direction = Vector2.ZERO
	
	direction.x = Input.get_action_strength("shoot_right") - Input.get_action_strength("shoot_left")
	direction.y = Input.get_action_strength("shoot_down") - Input.get_action_strength("shoot_up")
	
	if time_to_shoot > 0:
		time_to_shoot -= delta;
		return;
	
	if direction != Vector2.ZERO:
		var bullet = bullet_scene.instance();

		bullet.transform = transform;
		bullet.move_direction = direction;
		owner.add_child(bullet)
		
		time_to_shoot = seconds_per_shoot;

func _physics_process(delta):
	var direction = Vector2.ZERO
	
	direction.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	direction.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")

	velocity = direction * move_speed * (max(speed, 1) / 50.0)
