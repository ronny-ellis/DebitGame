extends CanvasLayer

func get_nodes_of_custom_type(parent: Node) -> Array:
	var matching_nodes := []
	for child in parent.get_children():
		if child is VBoxContainer:  # must hardcode or directly reference class
			matching_nodes.append(child)
	return matching_nodes
