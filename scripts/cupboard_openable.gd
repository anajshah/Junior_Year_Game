extends Node2D

@onready var area_2d: Area2D = $Area2D
@onready var collision_shape_2d: CollisionShape2D = $Area2D/CollisionShape2D
@onready var collision_shape_2d_2: CollisionShape2D = $Area2D/CollisionShape2D2
@onready var collision_shape_2d_3: CollisionShape2D = $Area2D/CollisionShape2D3
@onready var collision_shape_2d_4: CollisionShape2D = $Area2D/CollisionShape2D4
@onready var collision_shape_2d_5: CollisionShape2D = $Area2D/CollisionShape2D5
@onready var collision_shape_2d_6: CollisionShape2D = $Area2D/CollisionShape2D6

@onready var shape_map := {
	0: collision_shape_2d,
	1: collision_shape_2d_2,
	2: collision_shape_2d_3,
	3: collision_shape_2d_4,
	4: collision_shape_2d_5,
	5: collision_shape_2d_6
}

var player_in_range := false
var is_open := false


func _on_area_2d_body_shape_entered(
	body_rid: RID,
	body: Node,
	body_shape_index: int,
	local_shape_index: int
) -> void:
	if body.name == "Player":
		print("Player touched:", shape_map[local_shape_index].name)

func _on_area_2d_body_entered(body: Node2D) -> void:
	player_in_range = true

func _on_Area2D_body_exited(body):
		player_in_range = false
		is_open = false

func _process(_delta):
	if player_in_range and Input.is_action_just_pressed("ui_accept"):
		open_door()
		is_open = true
		print("open!open!open!")

func open_door():
	if is_open:
		collision_shape_2d.disabled = true
		print("change")
		#$Sprite2D.frame = 1  # or change texture
	else:
		collision_shape_2d.disabled = false
		#$Sprite2D.frame = 0



## Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
