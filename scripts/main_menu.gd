extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/period_1.tscn")

func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/period_2.tscn")

func _on_button_3_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/period_3.tscn")

func _on_button_4_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/period_4.tscn")

func _on_button_5_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/period_5.tscn")

func _on_button_6_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/period_6.tscn")
