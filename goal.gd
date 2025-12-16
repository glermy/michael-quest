extends Area2D


@export var level_name: String



func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		get_tree().change_scene_to_file("res://levels/"+level_name)
		
