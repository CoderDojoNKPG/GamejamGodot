extends Node2D
@onready var main: Node2D = $".."

var is_hovering := false

func _process(_delta):
	queue_redraw()

func _draw():
	draw_circle(Vector2(100,100), 60, Color(0.369, 0.255, 0.439, 1.0),false,5.0)
	#draw_circle(get_local_mouse_position(),60,Color(0.739, 0.007, 0.173, 1),false)
	#draw_circle(get_local_mouse_position(),10,Color(0.739, 0.007, 0.173, 1),false)
	#draw_circle(get_local_mouse_position(),5,Color(0.739, 0.007, 0.173, 1),false)
