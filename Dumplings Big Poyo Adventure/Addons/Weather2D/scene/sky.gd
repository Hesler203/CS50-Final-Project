@tool
extends TextureRect

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_parent().updateCloudAmount.connect(setCloudAmount)


	
func setCloudAmount(cloudAmount) -> void:
	material.set_shader_parameter("cloudcover", -15.0 + cloudAmount * 25.0)
