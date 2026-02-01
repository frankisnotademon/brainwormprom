class_name DialogueController
extends Node

#var current_dialogue : Dialogue

#@onready var dialogue_box : Panel = $"../HUD/DialogueBox"
#@onready var npc_name_text : Label = $"../HUD/DialogueBox/NPCName"
#@onready var dialogue_text : Label = $"../HUD/DialogueBox/Dialogue"

#@onready var player : CharacterBody2D = $".."

#@export var TESTDIALOGUE : Dialogue

#var visible_chars : float
#var current_line : int

#func ready():
	#_close_box()
	#set_dialogue(TESTDIALOGUE)
	
	
#func set_dialogue(dialogue : Dialogue):
	#current_dialogue = dialogue
	
	#dialogue_box.visible = true
	#npc_name_text.text = dialogue.npc_name
	
	#current_line = 0
	#_set_line(dialogue.line[0])
	
#func _process(delta: float) -> void:
	#visible_chars += 30 * delta
	#dialogue_text.visible_characters = int(visible_chars)
	
	#if not current_dialogue:
		#return
		
	#if Input.is_action_just_pressed("accept"):
		#if len(current_dialogue.lines) == current_line + 1:
			#_close_box()
			
		#else:
			#current_line += 1
			#_set_line(current_dialogue.lines[current_line])
	
#func _set_line(line : String):
	#visible_chars = 0
	#dialogue_text.visible_characters = 0
	#dialogue_text.text = line
	
#func _close_box():
	#dialogue_box.visible = false
	#current_dialogue = null
