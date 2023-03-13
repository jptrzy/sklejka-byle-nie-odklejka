extends Enemy
class_name Sniper
var speeeed = 0
onready var player = get_node("../Player")
func _physics_process(delta):
	if player:
		var direction = (position - player.position).normalized()
		move_and_slide(direction * speeeed)
func _ready():
	$SnipeTimer.start()
func on_death() -> void:
	queue_free()
func shoot() -> void:
	pass


func _on_SnipeTimer_timeout():
	if(position.distance_to(player.position)<100):
		speeeed = 30
	else:
		speeeed = 0
		shoot()
