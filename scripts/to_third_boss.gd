extends Area2D

@onready var timer: Timer = $Timer


func _on_body_entered(body: Node2D) -> void:
	#if body.name != "player":
		#return
	print("You win!") # Replace with function body.
	Engine.time_scale = 0.5
	#body.get_node("CollisionShape2D").queue_free() # player falls off screen when die
	timer.start()


func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().change_scene_to_file("res://scenes/period_3_boss_battle.tscn")
