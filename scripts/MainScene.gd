extends Node2D


var start = false


func _ready():
	$Bird.visible = false
	$Control/ScoreLabel.visible = false
	pass


func _process(delta):
	$Control/ScoreLabel.text = str(Global.score)

func _input(event):
	if event.is_action_pressed("click"):
		if (start == false):
			start_game()
	pass
	
func start_game():
	$Message.visible = false
	$Bird.visible = true
	$Control/ScoreLabel.visible = true
	$Bird.gravity_scale = 5
	start = true	
	$PipeCreateTimer.start()
	pass
	

func game_over():
	$PipeCreateTimer.stop()
	get_tree().reload_current_scene()


func _on_Bird_bird_dead():
	game_over()
	pass
