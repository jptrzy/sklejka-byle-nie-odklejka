extends Node2D

func _unhandled_input(event):
	if event.is_action_pressed("escape_to_pause_menu"):
		get_tree().change_scene("res://src/UI/PauseMenu.tscn")
