extends Node2D

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		get_tree().change_scene("res://src/UI/PauseMenu.tscn")
	
