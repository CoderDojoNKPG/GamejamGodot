extends Node2D

@export var enemy_scene: PackedScene
@export var enemies_node: Node2D

func spawn_enemy() -> void:
	print("Spawning enemy...")
	var instance = enemy_scene.instantiate()
	enemies_node.add_child(instance)
	

func _on_timer_timeout() -> void:
	spawn_enemy()
