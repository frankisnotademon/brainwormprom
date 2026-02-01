extends Node

@onready var box = $DialogueBox
@onready var words = $DialogueBox/words

var _is_in_area: bool = false

func _ready():
	box.hide()
	words.hide()

func _input(event):
	if _is_in_area:
		box.show()
		words.show()
			
func _on_area_2d_area_entered(body):
	_is_in_area = true
	
func _on_area_exited(body):
	_is_in_area = false
	box.hide()
	words.hide()
