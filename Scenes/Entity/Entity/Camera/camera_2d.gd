extends Camera2D

@export var shakeStrength : float = 0.5
@export var shakeFade : float = 1.0

var rng = RandomNumberGenerator.new()
var current_strength : float = 0.0

func apply_shake():
	current_strength = shakeStrength 

func _process(delta: float) -> void:
	if Input.is_action_pressed("fire"):
		apply_shake()
	
	if current_strength > 0:
		current_strength = lerpf(current_strength, 0, shakeFade * delta)
		offset = randomOffset()
	else:
		offset = Vector2.ZERO

func randomOffset() -> Vector2:
	return Vector2(
		rng.randf_range(-current_strength, current_strength),
		rng.randf_range(-current_strength, current_strength)
	)
