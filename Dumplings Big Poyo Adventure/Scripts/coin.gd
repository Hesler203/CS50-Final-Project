extends Area2D

@onready var ui: Node = $"../../UI"
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var free_coin: Timer = $free_coin

const DIRECTION = Vector2(-1,0)
const SPEED = 100 # Scroll Speed

@onready var background: Node2D = $"../../Background"
var background_width: int



func _ready() -> void:
	background_width = background.background


func _process(delta: float) -> void:
	position += DIRECTION * SPEED * delta
	if position.x > background_width:
		position.x = 0


func _on_body_entered(_body: Node2D) -> void:
	ui.add_point()
	
	animation_player.play("pickup")  
	
	free_coin.start()


func _on_free_coin_timeout() -> void:
	queue_free()


func _on_not_collected_timeout() -> void:
	queue_free()
