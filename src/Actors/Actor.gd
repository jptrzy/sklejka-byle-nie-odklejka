extends KinematicBody2D
class_name Actor

"""   ->  Stats  <-
Values should be between 1 and 100.

TO DISCUSS

strength - dealt damage amount
inteligence - used for magic
speed - movement speed, attack frequency
"""

export (int) var strength = 1
export (int) var intelligence = 1
export (int) var speed = 1

var velocity = Vector2.ZERO

func _physics_process(delta):
	velocity = move_and_slide(velocity)

"""
_get_property_list() don't work propertly for now,
so the varibles can't be formated nicly in the inspector.
For more info look at https://github.com/godotengine/godot/issues/58239
"""
