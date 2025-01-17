extends PathFollow2D


@export var speed = 105.0

var path_length = 0.0



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	path_length = get_parent().curve.get_baked_length()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	progress_ratio += speed * delta / path_length
	
	if progress_ratio >= 1.0:
		get_parent().get_parent().queue_free()
