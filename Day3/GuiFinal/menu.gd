extends Control
const GAME = preload("res://main.tscn")
var main_scene
@onready var start_button: Button = $ColorRect/MarginContainer/VBoxContainer/StartButton

func _on_StartButton_pressed():
	print("START BUTTON PRESSED")
	start_button.disabled = true
	main_scene = GAME.instantiate()
	add_child(main_scene)

func start_button_restore():
	start_button.disabled = false
		
