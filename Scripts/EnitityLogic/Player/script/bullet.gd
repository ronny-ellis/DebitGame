extends Area2D

@onready var alienship =get_node("/root/Game/alienship")
var kill =0
const SPEED = 1000
@onready var alien_timer: Timer = $AlienTimer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += transform.x * SPEED * delta


func _on_timer_timeout() -> void:
	queue_free()


func _on_body_entered(body: Node2D) -> void:
	if body.name=="decor":
		queue_free()
	else:
		alienship.alien_killed=alienship.alien_killed+1
		body.queue_free()
		print(alienship.alien_killed)
		queue_free()
