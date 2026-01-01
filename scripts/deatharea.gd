extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		$death.play()
		$Timer.start()


func _on_timer_timeout() -> void:
	playermanager.die()
