extends Area2D

@onready var player: CharacterBody2D = get_node("/root/Node2D/Protagonist")

func _ready() -> void:
	print("I have spawned!")
	#print(player.position.x)

func _physics_process(delta: float) -> void:
	var dir = position.direction_to(player.position)
	position += dir
