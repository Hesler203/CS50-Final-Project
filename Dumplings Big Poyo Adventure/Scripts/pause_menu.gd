extends Control


signal focus

@onready var game = $"../"


func _on_resume_pressed() -> void:
	game.pause()


func _on_quit_pressed() -> void:
	game.pause() 
	
	$"../AnimationPlayer".play("fade")
	await $"../AnimationPlayer".animation_finished
	
	get_tree().change_scene_to_file("res://Scenes/title.tscn")
	
