extends Control

@onready var popup_menu: PopupMenu = $MenuButton/CenterContainer/PopupMenu

var text_files = []

func _ready():
	var dir = DirAccess.open("res://Credits")
	if dir:
		print("Directory opened successfully")
		var files = dir.get_files()
		print(files.size())
		for file_name in files:
			print("Checking file:", file_name)

			text_files.append(file_name)
			popup_menu.add_item(file_name)
			print("Added to popup_menu:", file_name)
		
	popup_menu.connect("id_pressed", Callable($MenuButton, "_on_menu_item_pressed"))
	$MenuButton.connect("pressed", Callable(self, "_on_menu_button_pressed"))

func _on_menu_button_pressed():
	popup_menu.show()


func _on_play_pressed() -> void:
	$select.play()
	
	$AnimationPlayer.play("play")
	await $AnimationPlayer.animation_finished
	
	get_tree().change_scene_to_file("res://Scenes/game.tscn")
	

func _on_outfits_pressed() -> void:
	$select.play()
	
	await $select.finished
	get_tree().change_scene_to_file("res://Scenes/outfits.tscn")


func _on_quit_game_pressed() -> void:
	$AnimationPlayer.play("quit")
	await $AnimationPlayer.animation_finished
	
	get_tree().quit()
