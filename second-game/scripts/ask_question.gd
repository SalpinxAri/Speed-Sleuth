extends Button


@export var nodepath:NodePath



	

func _on_option_button_item_selected(index: int) -> void:
	if index == 0 and get_node(nodepath).is_suspect:
		self.disabled = true
	else:
		self.disabled = false
	


func _on_ask_questions_choice_changed() -> void:
	_on_option_button_item_selected(0)
