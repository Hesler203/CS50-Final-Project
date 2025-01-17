extends Node2D


@onready var coin_spawn_path: PathFollow2D = %coin_spawn_path
@onready var coin_timer: Timer = %coin_timer



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for coin in range(randi_range(1, 3)):
		spawn_coin()


func spawn_coin():
	var new_coin = preload("res://Scenes/coin.tscn").instantiate()
	
	coin_spawn_path.progress_ratio = randf()
	
	new_coin.global_position = coin_spawn_path.global_position
	
	add_child(new_coin)


func _on_coin_timer_timeout() -> void:
	coin_timer.wait_time = randi_range(1,3)

	for coin in range(randi_range(1,3)):
		spawn_coin()
