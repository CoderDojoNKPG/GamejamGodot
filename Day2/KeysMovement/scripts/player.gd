extends Area2D

var goto = Vector2.ZERO
@export var player_speed = 400

func _process(delta: float) -> void:
	position  = position.move_toward(goto, delta * player_speed)
	# if Input.is_action_pressed("Left"):
	#	print("LEFT");
