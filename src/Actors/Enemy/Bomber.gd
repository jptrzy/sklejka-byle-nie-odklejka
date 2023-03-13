extends Enemy
class_name Bomber
var bomba = false
var speeeed = 50
onready var player = get_node("../Player")
func _physics_process(delta):
	if player:
		var direction = (player.position - position).normalized()
		move_and_slide(direction * speeeed)
func _ready():
	$BombTimer.start()
func on_death() -> void:
	queue_free()
func explode() -> void:
	on_death()

func _on_BombTimer_timeout():
	if(bomba == true):
		explode()
	elif(position.distance_to(player.position)<40):
		bomba = true
		speeeed = 0
	
