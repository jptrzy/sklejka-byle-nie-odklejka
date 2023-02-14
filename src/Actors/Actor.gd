extends KinematicBody2D
class_name Actor

"""   ->  Stats  <-
Values should be between 1 and 100.

TO DISCUSS

strength - dealt damage amount
inteligence - used for magic
speed - movement speed, attack frequency
"""

export var food := [0, 0, 0]

export (int) var strength = 1
export (int) var intelligence = 1
export (int) var speed = 1

export (int) var max_health = 1;
var health;

"""
Movemenet
"""

var velocity = Vector2.ZERO

func _ready() -> void:
	health = max_health;

func _physics_process(delta) -> void:
	velocity = move_and_slide(velocity)

func take_damage(damage: int) -> void:
	health -= damage;
	
	if 0 >= health: on_death()

func on_death() -> void:
	print("TODO on death")

"""
_get_property_list() don't work propertly for now,
so the varibles can't be formated nicly in the inspector.
For more info look at https://github.com/godotengine/godot/issues/58239

WORKS IN GODOT 4
"""
