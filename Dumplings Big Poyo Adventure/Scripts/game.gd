extends Node2D


@onready var ui: Node = $UI
@onready var pause_menu: Control = $PauseMenu
@onready var pause_sound: AudioStreamPlayer2D = $PauseMenu/pause
@onready var game_over: Control = $GameOver


var paused = false



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("Pause"):
		pause()
	
	if Input.is_key_pressed(KEY_ESCAPE):
		$AnimationPlayer.play("quit")
		await $AnimationPlayer.animation_finished
		
		get_tree().quit()
	
	
func _ready() -> void:
	SaveLoad.load_score()
	

func pause():
	pause_sound.play()
	
	if paused:
		pause_menu.hide()
		 
		Engine.time_scale = 1
		
	else:
		pause_menu.show()
		
		pause_menu.emit_signal("focus")
		
		Engine.time_scale = 0
	
	paused = !paused
	
	
func _on_dumpling_health_depleted() -> void:
	if ui.score > SaveLoad.highscore:
		SaveLoad.highscore = ui.score 
		 
	SaveLoad.total_seeb = SaveLoad.total_seeb + ui.score
	
	SaveLoad.save_score()
	
	game_over.update_scores()
	
	game_over.show()
	
	Engine.time_scale = 0


func _on_killzone_dead() -> void:
	if ui.score > SaveLoad.highscore:
		SaveLoad.highscore = ui.score 
		 
	SaveLoad.total_seeb = SaveLoad.total_seeb + ui.score
	
	SaveLoad.save_score()
	
	game_over.update_scores()
	
	game_over.show()
	
	game_over.emit_signal("focus")
	
	Engine.time_scale = 0
	

func _on_sugar_dead() -> void:
	if ui.score > SaveLoad.highscore:
		SaveLoad.highscore = ui.score 
		 
	SaveLoad.total_seeb = SaveLoad.total_seeb + ui.score
	
	SaveLoad.save_score()
	
	game_over.update_scores()
	
	game_over.show()
	
	game_over.emit_signal("focus")
	
	Engine.time_scale = 0
	

func _on_bee_dead() -> void:
	if ui.score > SaveLoad.highscore:
		SaveLoad.highscore = ui.score 
		 
	SaveLoad.total_seeb = SaveLoad.total_seeb + ui.score
	
	SaveLoad.save_score()
	
	game_over.update_scores()
	
	game_over.show()
	
	game_over.emit_signal("focus")
	
	Engine.time_scale = 0
	

func _on_background_won() -> void:
	if ui.score > SaveLoad.highscore:
		SaveLoad.highscore = ui.score 
		 
	SaveLoad.total_seeb = SaveLoad.total_seeb + ui.score
	
	SaveLoad.save_score()
	
	game_over.update_scores()
	
	$Congratulations.show()
	$Congratulations/Timer.start()


func _on_timer_timeout() -> void:
	$Congratulations.hide()
	
	_on_killzone_dead()
