extends Node2D

var is_paused = false setget set_is_paused


func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		self.is_paused = !is_paused

		
func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused


export var MainGameScene : PackedScene
	


func _on_Play_pressed():
	self.is_paused = false

func _on_Quit_pressed():
	get_tree().quit()


func _on_Credits_pressed():
	get_tree().change_scene("res://src/UI/Settings.tscn")
