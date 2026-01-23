extends CharacterBody2D

@onready var player = $Player
var player_x: float

const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var player_pos: Vector2

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	player_pos = global_position
	#print (player_pos)
	player_x = player.global_position.x
	print(player_x)
	#if direction:
		#velocity.x = direction * SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
