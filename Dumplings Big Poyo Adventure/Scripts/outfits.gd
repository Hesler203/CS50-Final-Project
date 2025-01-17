extends Control



func _ready() -> void:
	$Back.grab_focus()


func _process(_delta: float) -> void:
	if Input.is_key_pressed(KEY_ESCAPE):
		$AnimationPlayer.play("quit")
		await $AnimationPlayer.animation_finished
		
		get_tree().quit()


func _on_back_pressed() -> void:
	$AnimationPlayer.play("fade")
	
	await $AnimationPlayer.animation_finished
	
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")
