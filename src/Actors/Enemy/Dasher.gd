extends Enemy
class_name Dasher
var dash = false
var speeeed = 0
var dir = position.normalized()
onready var player = get_node("../Player")
func _physics_process(delta):
	if player:
		var direction = dir
		move_and_slide(direction * speeeed)
func _ready():
	$DashTimer.start()
func on_death() -> void:
	queue_free()


func _on_DashTimer_timeout():
	dir = (player.position-position).normalized()
	speeeed = 200
	yield(get_tree().create_timer(0.25), "timeout")
	dir = position.normalized()
	speeeed = 0
