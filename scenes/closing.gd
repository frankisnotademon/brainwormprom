extends Node2D

@onready var answer = $LineEdit
@onready var correct = $Answerish
@onready var button = $Button

func _ready():
	button.hide()
	
func _on_line_edit_text_submitted(answer: String) -> void:
	button.show()
	if answer.contains("james"):
		correct.text = "Correct! You win!"
	else:
		correct.text = "You have not found the brain worm :("

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/start.tscn")
