extends MenuButton

@onready var menu: Control = $".."



func _ready() -> void:
	add_theme_color_override("font_color", "#fff602")
	add_theme_color_override("font_focus_color", "#fff602")
	add_theme_color_override("font_pressed_color", "#fff602")
	$Label.add_theme_color_override("font_color", "#fff602")
	$Label.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	$Label.size_flags_vertical = Control.SIZE_EXPAND_FILL
	
	# Connect the signal to update ColorRect size when Label size changes
	$Label.connect("minimum_size_changed", Callable(self, "_on_label_resized"))


func _process(delta: float) -> void:
	pass


func _on_popup_menu_id_pressed(id: int) -> void:
	var file_name = menu.text_files[id]
	var file = FileAccess.open("res://Credits/" + file_name, FileAccess.READ)
	var text_content = file.get_as_text()
	file.close()
	
	$Label.text = text_content

	# Update ColorRect size to match Label's new size
	_on_label_resized()

	$Label/ColorRect.show()
	
	menu.popup_menu.hide()
	
	
func _on_label_resized():
# Update the size of the ColorRect to match the Label's combined minimum size 
	$Label/ColorRect.size = $Label.size
