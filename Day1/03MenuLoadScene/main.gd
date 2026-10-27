extends Node2D

const width = 1920
const height = 1080
const half_width = int(round(width/2.0))
const half_height = int(round(height/2.0))

var pressed = false
var game_over = false
@onready var gamerowl: Sprite2D = $Gamerowl

func _ready():
	print("Rootnode after = " , name)

func _on_ColorRect_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			print("Mouse button " , event.button_index , " pressed at: " , event.position)
		elif event.is_released():
			print("Mouse button " , event.button_index , " released at: " , event.position)

func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ESCAPE and not event.is_echo():
			get_tree().change_scene_to_file("res://menu.tscn")
	## Alternative using built in ui actions
	#if event.is_action_pressed("ui_cancel") and not event.is_echo():
			#get_tree().change_scene_to_file("res://menu.tscn")

func _process(_delta):
	pass
