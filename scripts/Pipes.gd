extends Node2D


func _ready():
	position.y += randf() * 200 - 100
	pass
	
	
func _process(delta):
	position += Vector2.LEFT * 150 * delta
	if position.x < -700:
		queue_free()
	pass


func _on_ScoreArea2D_body_exited(body):
	if body.name == "Bird":
		Global.score_plus()
		AudioManager.play("point")
	pass
