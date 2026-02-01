extends CharacterBody2D

@export var speed = 750

func get_input():
	var input_direction = Input.get_vector("west", "east", "north", "south")
	velocity = input_direction * speed
	
func _physics_process(delta: float) -> void:
	move_and_slide()
	get_input()

func talk():
	pass
	#if player is touching npcs collision shape
	#pressing e to interact can start dialougue


func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://scenes/closing.tscn")
