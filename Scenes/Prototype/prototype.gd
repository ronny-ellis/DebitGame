extends Node2D

func _process(delta: float) -> void:
	if GameManager.start_game == true && $StartGame2.visible == false:
		$StartGame2.activate_me()
		
