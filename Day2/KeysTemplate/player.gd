extends Area2D
var bullet_scene: PackedScene = preload("res://actors/bullet.tscn")
@onready var bullets = get_node("../Bullets")
@onready var anim = get_node("../AnimationPlayer")

var hp = 10
var no_bullets = 0
var goto = Vector2.ZERO
var move_vector = Vector2.ZERO
var x = 0
var y = 0
@export var player_speed = 400
@export var keyspeed = 4

func _process(delta: float) -> void:
	# position  = position.move_toward(goto, delta * player_speed)
	x *= keyspeed
	y *= keyspeed

	position  += Vector2(x,y)
	x = 0
	y = 0
	if Input.is_action_pressed("Left"):
		x = -1
	if Input.is_action_pressed("Right"):
		x = 1
	if Input.is_action_pressed("Up"):
		y = -1
	if Input.is_action_pressed("Down"):
		y = 1

func damage_taken():
	anim.play("player_anim")
	hp -= 1
	$"..".update_label()
	if hp <= 0:
		$"..".summary()
		$"..".game_over = true

# Hantering av projektiler
func add_bullet():
	no_bullets += 1
	$"..".update_label()

func sub_bullet():
	no_bullets -= 1
	$"..".update_label()

func launch_bullet(ins):
	if no_bullets > 0:
		var instance = bullet_scene.instantiate()
		instance.position = position
		instance.pass_bullet_instance(ins)
		bullets.add_child(instance)
		sub_bullet()
