extends Node2D

export var MainGameScene : PackedScene

func _input(event):
	if event is InputEventKey:
		if event.pressed:
				get_tree().change_scene(MainGameScene.resource_path)
