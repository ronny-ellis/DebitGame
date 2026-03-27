extends Node

var start_game = false
var action_fight = false

func activate_game():
	start_game = true

func activate_fight():
	action_fight = true

func game_over():
	action_fight = false
	get_tree().change_scene_to_file("res://Scenes/UI/Game_over.tscn")
