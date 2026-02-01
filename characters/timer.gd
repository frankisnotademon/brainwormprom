extends Label

@onready var minutes_left:Label = $"."
@onready var timer:Timer = $Timer

func _ready():
	timer.start(300)
	
func _process(delta: float) -> void:
	minutes_left.text = "Time remaining: " + str(round(timer.time_left)) + " seconds"
