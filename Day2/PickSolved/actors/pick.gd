extends Area2D
	
func _on_Pick_area_entered(area):
	if area.name == 'Player':
		$"../../Player".add_bullet()
		$"../..".update_label()
		randomize()
		var rand_w = randi() % 1920
		var rand_h = randi() % 1080
		position = Vector2(rand_w,rand_h)
		# call_deferred('queue_free')
