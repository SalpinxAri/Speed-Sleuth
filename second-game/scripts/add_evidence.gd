extends TabBar


@export var node1:NodePath
@export var node2:NodePath
@export var node3:NodePath
@export var node4:NodePath
@export var node5:NodePath
@export var node_text:NodePath
var node_paths = [node1, node2, node3, node4, node5]


func _ready() -> void:
	print("node1 path:", node1)
	var label = get_node_or_null(node1)
	if label == null:
		push_warning("Label is null at runtime!")
	else:
		print("Found label:", label)


func _on_case_add_evidence() -> void:
	for node_path in node_paths:
		if  !get_node(node_path).full:
			get_node(node_path).evidence_text = get_node(node_text).evi_text
			get_node(node_path).full = true
			if get_node(node_path).evidence_text[0] == "`":
				get_node(node_path).important_evidence = true
			break
