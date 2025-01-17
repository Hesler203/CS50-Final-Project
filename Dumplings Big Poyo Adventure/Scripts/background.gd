extends Node2D


signal won

const DIRECTION = Vector2(-1,0)
const SPEED = 100 # Scroll Speed

@onready var city_1: Sprite2D = $"City-1"
@onready var city_2: Sprite2D = $"City-2"
@onready var city_3: Sprite2D = $"City-3"

var background: int



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	background = (city_1.texture.get_width() + city_2.texture.get_width() + city_3.texture.get_width())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += DIRECTION * SPEED * delta
	if position.x > background:
		position.x = 0
		

func _on_win_zone_won() -> void:
	emit_signal("won")
