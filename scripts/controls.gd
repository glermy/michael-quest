extends Window


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.close_requested.connect(handle_close)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func handle_close() -> void:
	self.visible = false
