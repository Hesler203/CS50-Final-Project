extends Area2D


signal won

@onready var timer = $Timer
@onready var retry: AudioStreamPlayer2D = $retry
@onready var congrats: AudioStreamPlayer2D = $congrats



func _on_body_entered(body: Node2D) -> void:
	print("Dumpling made it to the Forest!")
	
	Engine.time_scale = 0.4
	
	body.get_node("Collision").queue_free()
	
	timer.start()
	
	congrats.play(0)
	await congrats.finished
	congrats.play(0)

func _on_timer_timeout() -> void:
	emit_signal("won")
