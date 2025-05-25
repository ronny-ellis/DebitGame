extends Node2D

@onready var animationplayer = $AnimationPlayer

func _ready() -> void:
	animationplayer.play("Fade_in")
	get_tree().create_timer(2).timeout.connect(fade_out)
	
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("escape") || event.is_action_pressed("space") || event.is_action_pressed("start"):
		start_menu()
	
func fade_out():
	animationplayer.play("Fade_out")
	get_tree().create_timer(3).timeout.connect(start_menu)
	
func start_menu():
	get_tree().change_scene_to_file("res://Scenes/UI/main_menu.tscn")
