extends Node

@onready var box = $DialogueBox
@onready var wordsone = $DialogueBox/words
@onready var tutorial = $"../Label"

var _is_in_area: bool = false

func _ready():
	box.hide()
	wordsone.hide()
	tutorial.hide()

func _input(event):
	if _is_in_area:
		tutorial.show()
		if Input.is_action_just_pressed("accept"):
			box.show()
			wordsone.show()
			
func _on_area_2d_area_entered(body):
	_is_in_area = true
	
func _on_area_exited(body):
	_is_in_area = false
	box.hide()
	wordsone.hide()
	tutorial.hide()
