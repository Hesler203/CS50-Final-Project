extends MenuButton

onready var popup_menu = $PopupMenu
var text_files = []

func _ready():
	var dir = Directory.new()
	if dir.open("res://path/to/your/text/files") == OK:
		dir.list_dir_begin()
		var file_name = dir.get_next()
		while file_name != "":
			if dir.current_is_file() and file_name.ends_with(".txt"):
				text_files.append(file_name)
				popup_menu.add_item(file_name)
			file_name = dir.get_next()
		dir.list_dir_end()
	popup_menu.connect("id_pressed", self, "_on_menu_item_pressed")

func _on_menu_item_pressed(id):
	var file_name = text_files[id]
	var file = File.new()
	if file.file_exists("res://path/to/your/text/files/" + file_name):
		file.open("res://path/to/your/text/files/" + file_name, File.READ)
		var text_content = file.get_as_text()
		file.close()
		print(text_content)  # Or display the text content in a UI element
