extends Node2D

export var MainGameScene : PackedScene


func _on_Play_button_up():
	get_tree().change_scene(MainGameScene.resource_path)

