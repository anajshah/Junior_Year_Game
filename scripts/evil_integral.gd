extends AnimatableBody2D

var random_int: int = 0

@onready var collision_shape_2d: CollisionShape2D = $killzone/CollisionShape2D
@onready var animated_sprite_2d = $AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize() # Initialize seed
	random_int = randi_range(0, 2) # 1 to 100
	print(random_int)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if random_int == 1:
		animated_sprite_2d.play("y=x")
		collision_shape_2d.set_deferred("disabled", false)
	else:
		animated_sprite_2d.play("default")
		collision_shape_2d.set_deferred("disabled", true)
