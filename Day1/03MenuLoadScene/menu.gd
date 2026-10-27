extends Control

var main_scene

func _on_StartButton_pressed():
	print("Rootnode before = " , name)
	get_tree().change_scene_to_file("res://main.tscn")
