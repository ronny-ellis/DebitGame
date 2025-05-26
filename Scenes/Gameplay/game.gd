extends Node2D

var balloon_scene = preload("res://Util/Dialogues/balloon.tscn")
@onready var ship = get_node("alienship")
@onready var audio = $BattleCry
func _ready() -> void:
	var balloon : BaseGameDialogueBalloon = balloon_scene.instantiate()
	get_tree().current_scene.add_child(balloon)
	balloon.start(load("res://Util/Dialogues/nasi_dialogues.dialogue"), "start")

func _process(delta: float) -> void:
	if GameManager.action_fight == true && audio.playing == false:
		audio.play()
