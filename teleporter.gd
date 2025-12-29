extends Node2D


@export var player: CharacterBody2D
@export var tp_location: Node2D



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == player.name:
		player.global_position = tp_location.global_position
