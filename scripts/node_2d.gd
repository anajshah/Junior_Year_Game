extends Node2D

const speed = 60

@onready var ray_cast_2d_2: RayCast2D = $RayCast2D2
@onready var ray_cast_2d: RayCast2D = $RayCast2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D



var direction = -1
#ar directiony = 1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_2d_2.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = true
	elif ray_cast_2d.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = false
	
	position.x += direction * speed * delta
	#position.y += direction * speed * delta /2
	
