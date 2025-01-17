@tool
extends Panel


func _ready() -> void:
	get_parent().get_parent().get_parent().updateRainAmount.connect(setRainAmount)
	

func setRainAmount(rainAmount) -> void:
	material.set_shader_parameter("count", clampi(rainAmount * 300, 0 , 10000))
