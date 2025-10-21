extends Control

@export var nodepath:NodePath
signal choice_changed


var suspect_name = 'Adolphne Sax'
# Called when the node enters the scene tree for the first time.


	


func _on_case_pressed() -> void:
	suspect_name = get_node(nodepath).suspect_name
	choice_changed.emit()
