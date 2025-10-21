extends Control

@export var nodepath:NodePath
signal choice_changed
signal add_notes


var evi_text = ""
var suspect_name = 'Adolphne Sax'
# Called when the node enters the scene tree for the first time.


	


func _on_case_pressed() -> void:
	suspect_name = get_node(nodepath).suspect_name
	choice_changed.emit()




func _on_button_pressed() -> void:
	evi_text = $Response/Label.text
	add_notes.emit()
	
