extends RigidBody2D

const WIDTH = 450
const HEIGHT = 800

func _ready():
	global_position.x = WIDTH/2
	global_position.y = HEIGHT/2
	pass

func _process(delta):
	
	if rotation_degrees < -30:
		rotation_degrees = -30
		angular_velocity = 0
		
	if linear_velocity.y > 0.0:
		angular_velocity = 1.5
	pass


func _input(event):
	if event.is_action_pressed("click"):
		linear_velocity  = Vector2.UP * 200
		set_angular_velocity(-3)
	pass
