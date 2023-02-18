extends Actor
class_name Enemy


"""
TODO Death animations and particles
"""
func on_death() -> void:
	queue_free()
