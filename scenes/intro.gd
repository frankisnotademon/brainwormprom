extends Node2D

@onready var one = $LineOne
@onready var two = $LineTwo
@onready var three = $LineThree
@onready var four = $LineFour
@onready var five = $LineFive
@onready var button = $Button

func wait(seconds: float) -> void:
	await get_tree().create_timer(seconds).timeout
	
func _ready():
	one.hide()
	two.hide()
	three.hide()
	four.hide()
	five.hide()
	button.hide()
	await wait(1)
	one.show()
	await wait(3)
	two.show()
	await wait(3)
	three.show()
	await wait(3)
	four.show()
	await wait(3)
	five.show()
	await wait(1.5)
	button.show()
