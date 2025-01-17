extends CharacterBody2D



signal health_depleted

const SPEED = 100
const JUMP_VELOCITY = -475

var health = 3


func _ready() -> void:
	velocity.y = JUMP_VELOCITY


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("Fly"):
		velocity.y = JUMP_VELOCITY
		$AnimatedSprite2D.speed_scale = 2
		$AnimationPlayer.play("flying")
	
	if velocity.y >= 0:
		$AnimatedSprite2D.speed_scale = 1 

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("Left", "Right")
	
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func take_damage():
	health -= 1
	
	if health <= 0:
		health_depleted.emit()
