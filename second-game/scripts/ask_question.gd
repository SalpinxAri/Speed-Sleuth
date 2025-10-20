extends Button


func _on_option_button_item_selected(index: int) -> void:
	if index == 0:
		self.disabled = true
	else:
		self.disabled = false
	
