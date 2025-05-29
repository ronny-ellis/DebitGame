extends Node

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if GameManager.action_fight == true:
		$HBoxContainer.visible = true
