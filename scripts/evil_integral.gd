extends AnimatableBody2D

var random_int: int = 0

#@onready var collision_shape_2d: CollisionShape2D = $killzone/CollisionShape2D
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var collision_polygon_2d: CollisionPolygon2D = $killzone/CollisionPolygon2D
@onready var collision_polygon_2d_2: CollisionPolygon2D = $killzone/CollisionPolygon2D2
@onready var timer: Timer = $Timer
@onready var timer_2: Timer = $Timer2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize() # Initialize seed
	random_int = randi_range(1, 2) # 1 to 100
	print(random_int)
	if random_int == 1:
		animated_sprite_2d.play("y=x")
		collision_polygon_2d.set_deferred("disabled", true)
	elif random_int == 2:
		animated_sprite_2d.play("y=x^2")
		collision_polygon_2d_2.set_deferred("disabled", true)
	else:
		animated_sprite_2d.play("default")
		collision_polygon_2d_2.set_deferred("disabled", true)
		collision_polygon_2d.set_deferred("disabled", true)
	timer.start()
	
func _on_timer_timeout() -> void:
	if random_int == 1:
		collision_polygon_2d_2.set_deferred("disabled", false)
	elif random_int == 2:
		collision_polygon_2d.set_deferred("disabled", false)
	timer_2.start()

func _on_timer_2_timeout() -> void:
	collision_polygon_2d_2.set_deferred("disabled", true)
	collision_polygon_2d.set_deferred("disabled", true)
	animated_sprite_2d.play("default")

#func _on_animated_sprite_2d_animation_finished() -> void:
	#animated_sprite_2d.play("default")
	#print("is ts even on")
	#collision_shape_2d.set_deferred("disabled", true)
	#collision_polygon_2d.set_deferred("disabled", true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#if random_int == 1:
		#animated_sprite_2d.play("y=x")
		#collision_polygon_2d.set_deferred("disabled", true)
	#elif random_int == 2:
		#animated_sprite_2d.play("y=x^2")
		#collision_shape_2d.set_deferred("disabled", true)
	#else:
		#animated_sprite_2d.play("default")
		#collision_shape_2d.set_deferred("disabled", true)
		#collision_polygon_2d.set_deferred("disabled", true)
	#timer.start()
