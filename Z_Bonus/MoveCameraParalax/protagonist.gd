extends CharacterBody2D


const SPEED = 300.0

func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("MoveLeft", "MoveRight", "MoveUp", "MoveDown")
	velocity = direction * SPEED

	move_and_slide()
