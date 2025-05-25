extends Node2D

var can_start: bool = false

func _on_start_game_body_entered(body: Node2D) -> void:
	if body.name.to_lower() == "player":
		$Label.visible = true
		can_start = true
		

func _on_start_game_body_exited(body: Node2D) -> void:
	if body.name.to_lower() == "player":
		$Label.visible = false
		can_start = false

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("Interact") && can_start == true:
		start_game()

func start_game():
	print("Start Game")

func activate_me():
	self.visible = true
	$Open.play()
