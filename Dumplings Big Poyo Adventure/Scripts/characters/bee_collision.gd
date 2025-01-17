extends Area2D


signal dead

@onready var buzz: AudioStreamPlayer2D = $Path2D/PathFollow2D/Sprite2D/buzz



func _ready() -> void:
	buzz.play(0)


func _on_killzone_dead() -> void:
	emit_signal("dead")
