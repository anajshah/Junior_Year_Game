extends Node2D

@onready var area_2d: Area2D = $Area2D

var player_in_range := false
var is_open := false



func _on_area_2d_body_entered(body: Node2D) -> void:
	player_in_range = true

func _on_Area2D_body_exited(body):
	if body.name == "Player":
		player_in_range = false

func _process(_delta):
	if player_in_range and Input.is_action_just_pressed("interact"):
		toggle_door()
		print("open!open!open!")

func toggle_door():
	is_open = !is_open
	
	if is_open:
		$CollisionShape2D.disabled = true
		$Sprite2D.frame = 1  # or change texture
	else:
		$CollisionShape2D.disabled = false
		$Sprite2D.frame = 0



## Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
