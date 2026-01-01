extends Area2D




func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		hide()
		coinmanager.coin_count += 1
		$coin.play()
		$Timer.start()


func _on_timer_timeout() -> void:
	self.queue_free()
