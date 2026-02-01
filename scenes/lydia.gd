extends Area2D

@onready var box = $Panel
@onready var one = $Panel/One
@onready var two = $Panel/Two
@onready var three = $Panel/Three

#for converting, change $ things, connect new signals
func wait(seconds: float) -> void:
	await get_tree().create_timer(seconds).timeout

var _is_in_area: bool = false

func _ready():
	box.hide()
	hide_all()

func _input(event):
	if _is_in_area:
		if Input.is_action_just_pressed("accept"):
			box.show()
			one.show()
			await wait(3)
			one.hide()
			two.show()
			await wait(2.5)
			two.hide()
			three.show()
	

	_is_in_area = false
	box.hide()
	hide_all()
	
#func talk():
	#one.show()
	#box.show()
	#if Input.is_action_just_pressed("accept"):
		#print("its me hi im the problem its me")
	
func hide_all():
	one.hide()
	two.hide()
	three.hide()
	
