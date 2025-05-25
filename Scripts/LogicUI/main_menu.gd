extends Control

var start:bool = false
var quit:bool = false

func _process(delta: float) -> void:
	if $Click.playing == false && start == true:
		get_tree().change_scene_to_file("res://Scenes/Prototype/prototype.tscn")
	elif $Click.playing == false && quit == true:
		get_tree().quit()

func _on_start_button_pressed() -> void:
	$Click.play()
	start = true
	disableButton()
	

func _on_quit_button_pressed() -> void:
	$Click.play()
	quit = true
	disableButton()

func disableButton():
	$VBoxContainer/StartButton.disabled = true
	$VBoxContainer/QuitButton.disabled = true
