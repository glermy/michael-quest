extends Area2D




func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		coinmanager.coin_count += 1
		self.queue_free()
