@tool
extends Panel


func _ready() -> void:
	get_parent().get_parent().get_parent().updateRainAmount.connect(setRainAmount)

func setRainAmount(rainAmount):
	material.set_shader_parameter("frequency", clamp(4.0 - rainAmount * 7.0, -3.0 , 7.0))
