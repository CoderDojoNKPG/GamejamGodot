extends Node2D
const w = 1920
const h = 1080

var pick_scene: PackedScene = preload("res://actors/pick.tscn")

func create_pick():
	## Definiera vilken scen som ska instancieras
	# var instance = pick_scene.instantiate()

	## Slumpa fram en ny position
	# randomize()
	# var rand_w = randi() % w
	# var rand_h = randi() % h
	## Ge instansen dess position
	# instance.position = Vector2(rand_w , rand_h)

	## Lägger till instansen som en nod i scenen
	# add_child(instance)
	pass

func _on_timer_timeout() -> void:
	## Lägg till en timer-nod och låt den skicka en signal till denna för upprepad initiering
	# create_pick()
	pass
