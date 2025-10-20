extends Control

@onready var timer: Timer = $Timer
@onready var time_display: Label = $VBoxContainer/TimeDisplay
@onready var time_label: Label = $VBoxContainer/TimeLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.start()

func time_left_in_case():
	var time_left = timer.time_left
	var minute = floor(time_left/60)
	var second = int(time_left) % 60
	return [minute, second]

func view_time() -> void:
	if timer.time_left <= 30:
		time_label.text = ""
		time_display.text = "%02d:%02d" % time_left_in_case()		 
	elif Input.is_action_just_pressed("ui_up"):
		time_label.text = "press DOWN to hide time"
		time_display.text = "%02d:%02d" % time_left_in_case()
	elif Input.is_action_just_pressed("ui_down"):
		time_label.text = "press UP to show time"
		time_display.text = ""
	
	
func _process(delta):
	view_time()
		
	
