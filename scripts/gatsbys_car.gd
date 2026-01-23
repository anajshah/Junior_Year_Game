extends CharacterBody2D

const SPEED = 100.0
@onready var timer: Timer = $Timer

var player_pos: float
var other_pos: float
var player: CharacterBody2D

func _ready():
	var scene_root = get_tree().current_scene
	player = scene_root.get_node_or_null("Player")

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	var direction = 0
	player_pos = global_position.x
	other_pos = player.global_position.x
	
	if (other_pos - player_pos)<0:
		direction = -1
		print("move left")
	elif (other_pos - player_pos)>0:
		direction = 1
		print("move right")
		
	
	
	velocity.x = direction * SPEED

	move_and_slide()
