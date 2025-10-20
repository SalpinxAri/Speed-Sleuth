extends Label

@export var nodepath:NodePath
# TODO 
# Change this to be called every time the person is changed
func _ready() -> void:
	self.text = get_node(nodepath).suspect_name
