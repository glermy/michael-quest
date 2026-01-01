extends CharacterBody2D


const SPEED = 210.0
var jump_anim_cooldown = 0
const JUMP_VELOCITY = -375.0

@onready var animated_sprite = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	jump_anim_cooldown -= 1
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		animated_sprite.play("jump")
		jump_anim_cooldown = 15
	

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
		animated_sprite.play("walk")
		animated_sprite.flip_h = direction < 0
		if jump_anim_cooldown <= 0:
			animated_sprite.play("walk")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		if jump_anim_cooldown <=0:
			animated_sprite.play("idle")
	move_and_slide()
