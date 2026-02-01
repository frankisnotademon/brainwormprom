extends Area2D

@onready var box = $Panel
@onready var one = $Panel/One
@onready var two = $Panel/Two
@onready var three = $Panel/Three
@onready var tutorial = $Tutorial

#for converting, change $ things, connect new signals
func wait(seconds: float) -> void:
	await get_tree().create_timer(seconds).timeout

var _is_in_area: bool = false

func _ready():
	box.hide()
	hide_all()
	tutorial.hide()

func _input(event):
	if _is_in_area:
		tutorial.show()
		if Input.is_action_just_pressed("accept"):
			box.show()
			one.show()
			await wait(3)
			one.hide()
			two.show()
			await wait(2.5)
			two.hide()
			three.show()
	
	
#func talk():
	#one.show()
	#box.show()
	#if Input.is_action_just_pressed("accept"):
		#print("its me hi im the problem its me")
	
func hide_all():
	one.hide()
	two.hide()
	three.hide()
	

func _on_area_exited(area: Area2D) -> void:
	_is_in_area = false
	box.hide()
	hide_all()
	tutorial.hide()
	
	


func _on_area_entered(area: Area2D) -> void:
	_is_in_area = true
