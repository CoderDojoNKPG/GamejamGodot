extends Control

@onready var player: Area2D = $"../Player"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_toggled(toggled_on: bool) -> void:
	if toggled_on:
		player.player_speed *= 2
		player.keyspeed *= 2
	else:
		player.player_speeda /= 2
		player.keyspeed /= 2
