extends Control

@onready var animationplayer = $AnimationPlayer

@onready var groups: Array = $MadeBy.get_nodes_of_custom_type($MadeBy)
var current_array = 0

func _ready() -> void:
	print(groups.size())
	animationplayer.play("Fade_in")

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "Fade_out":
		if current_array < groups.size():
			print(groups[current_array])
			groups[current_array].visible = false
			current_array += 1

			if current_array == groups.size():
				await get_tree().create_timer(0.5).timeout
				get_tree().change_scene_to_file("res://Scenes/UI/main_menu.tscn")
				return  # Stop further execution

			groups[current_array].visible = true
			await get_tree().create_timer(0.5).timeout
			fade_in()
	if anim_name == "Fade_in":
		await get_tree().create_timer(0.5).timeout
		fade_out()


func fade_out():
	animationplayer.play("Fade_out")

func fade_in():
	animationplayer.play("Fade_in")
