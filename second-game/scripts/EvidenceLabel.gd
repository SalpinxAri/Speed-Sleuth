extends Label

var important_evidence = false
var evidence_text = ""
var full = false

func _on_remove_evidence_pressed() -> void:
	important_evidence = false
	evidence_text = "Empty slot. Gather some evidence!"
	self.text = evidence_text
	
