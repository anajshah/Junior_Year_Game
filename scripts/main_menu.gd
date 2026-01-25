extends Control


@onready var period_4: Button = $VBoxContainer/Period_4
@onready var period_1: Button = $VBoxContainer/Period_1
@onready var period_2: Button = $VBoxContainer/Period_2


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_period_4_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/period_1.tscn")

func _on_period_1_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/period_2.tscn")

func _on_period_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/period_3.tscn")
