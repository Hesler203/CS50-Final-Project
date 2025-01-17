extends Area2D


signal dead

@onready var barks: AudioStreamPlayer2D = $Path2D/PathFollow2D/Sprite2D/barks



func _on_killzone_dead() -> void:
	emit_signal("dead")


func _on_timer_timeout() -> void:
	barks.play()
