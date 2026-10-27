extends Node2D

const width = 1920
const height = 1080
const half_width = int(round(width/2.0))
const half_height = int(round(height/2.0))

var pressed = false
var game_over = false
@onready var gamerowl: Sprite2D = $Gamerowl

func _ready():
	pass

func _on_ColorRect_gui_input(event):
	if event is InputEventMouseButton:
		print("Mouse button " , event.button_index , " pressed at: " , event.position)

func _process(_delta):
	pass
