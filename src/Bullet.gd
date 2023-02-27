extends Node2D

export (int) var speed := 1
export (int) var damage := 1

var move_direction := Vector2.ZERO;

func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	transform.origin += move_direction * speed;

func _on_Bullet_body_entered(body: Node) -> void:
	if not body is Enemy:
		return
	
	var enemy = body as Enemy
	
	enemy.take_damage(damage)
	print(enemy.health)
	
	queue_free()
