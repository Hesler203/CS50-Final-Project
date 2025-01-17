extends Node2D


@onready var sugar_spawn_path: PathFollow2D = %sugar_spawn_path
@onready var sugar_timer: Timer = %sugar_spawn_timer
@onready var bee_spawn_path: PathFollow2D = %bee_spawn_path
@onready var bee_timer: Timer = %bee_spawn_timer
@onready var game: Node2D = $".."



func spawn_bee():
	var new_bee = preload("res://Scenes/Bee.tscn").instantiate()
	
	new_bee.connect("dead", Callable(game, "_on_bee_dead")) 
	
	bee_spawn_path.progress_ratio = randf()
	
	new_bee.global_position = bee_spawn_path.global_position
	
	add_child(new_bee)
	
	
func spawn_sugar():
	var new_sugar = preload("res://Scenes/Sugar.tscn").instantiate()
	
	new_sugar.connect("dead", Callable(game, "_on_sugar_dead"))
	
	sugar_spawn_path.progress_ratio = randf()
	
	new_sugar.global_position = sugar_spawn_path.global_position
	
	add_child(new_sugar)	
	
	
func _on_bee_spawn_timer_timeout() -> void:
	sugar_timer.wait_time = randi_range(6,14)
	
	for bee in range(randi_range(1,3)):
		spawn_bee()


func _on_sugar_spawn_timer_timeout() -> void:
	sugar_timer.wait_time = randi_range(12,20)
	
	for sugar in range(randi_range(1,2)):
		spawn_sugar()
