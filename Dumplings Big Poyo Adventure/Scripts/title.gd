extends Control



func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("Select"):
		$select.play()
		
		await $select.finished
		get_tree().change_scene_to_file("res://Scenes/menu.tscn")
		
	if Input.is_key_pressed(KEY_ESCAPE):
		get_tree().quit()
