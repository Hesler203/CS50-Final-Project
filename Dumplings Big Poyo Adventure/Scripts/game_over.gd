extends Control


signal focus

@onready var game = $"../"
@onready var ui: Node = $"../UI"
@onready var run_score: Label = $MarginContainer2/Labels/RunScore
@onready var high_score: Label = $MarginContainer2/Labels/HighScore
@onready var total_seeb: Label = $MarginContainer2/Labels/TotalSeeb



func update_scores():
	run_score.text = "Seebs this run:  " + str(ui.score)
	
	SaveLoad.load_score()
	
	high_score.text = "Highscore:  " + str(SaveLoad.highscore)
	
	total_seeb.text = "Total Seeb Collected:  " + str(SaveLoad.total_seeb)
	

func _on_retry_pressed() -> void:
	Engine.time_scale = 1
	
	game.game_over.hide()
	
	get_tree().reload_current_scene()


func _on_quit_pressed() -> void:
	Engine.time_scale = 1
	
	$"../AnimationPlayer".play("fade")
	await $"../AnimationPlayer".animation_finished
	
	get_tree().change_scene_to_file("res://Scenes/title.tscn")
