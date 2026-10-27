extends Control
@onready var start_button: Button = $ColorRect/MarginContainer/VBoxContainer/StartButton

const GAME = preload("res://main.tscn")
var main_scene

func _on_StartButton_pressed():
	start_button.disabled = true
	main_scene = GAME.instantiate()
	add_child(main_scene)

func restore_start_button():
		start_button.disabled = false
