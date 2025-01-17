extends Area2D


signal dead

@onready var timer = $Timer
@onready var retry = $retry



func _on_body_entered(body: Node2D) -> void:
	print("game over")
	
	Engine.time_scale = 0.4
	
	body.get_node("Collision").queue_free()
	
	timer.start()
	
	retry.play(0)

func _on_timer_timeout() -> void:
	emit_signal("dead")
