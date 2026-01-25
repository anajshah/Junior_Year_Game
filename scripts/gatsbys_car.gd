extends CharacterBody2D

const SPEED = 150.0
@onready var timer: Timer = $Timer
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var player_pos: float
var other_pos: float
var player: CharacterBody2D
var direction = -1
var stop = 0

func _ready():
	var scene_root = get_tree().current_scene
	player = scene_root.get_node_or_null("Player")


func _physics_process(delta: float) -> void: 
	if not is_on_floor():
		velocity += get_gravity() * delta
	player_pos = global_position.x
	other_pos = player.global_position.x
	print(other_pos-player_pos)
	if abs(other_pos - player_pos) <= 5:
		velocity.x = stop
		animated_sprite_2d.play("straight")
		timer.start()
	
	#if (other_pos - player_pos)<0:
		#direction = -1
		#print("move left")
	#elif(other_pos - player_pos)>0:
		#direction = 1
		#print("move right")
		#
	
	velocity.x = direction * SPEED

	move_and_slide()
	
func _on_timer_timeout() -> void:
	#direction = direction * -1
	if (other_pos - player_pos)<0:
		animated_sprite_2d.play("driving")
		animated_sprite_2d.flip_h = false
		direction = -1
		print("move left")
	elif(other_pos - player_pos)>0:
		direction = 1
		animated_sprite_2d.play("driving")
		animated_sprite_2d.flip_h = true
		print("move right")



#
#func _on_timer_timeout():	
	#var direction = 0
	#if (other_pos - player_pos)<0:
		#direction = -1
		#print("move left")
	#elif (other_pos - player_pos)>0:
		#direction = 1
		#print("move right")
	#
	#velocity.x = direction * SPEED
