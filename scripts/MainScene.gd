extends Node2D


var start = false
var game_over = false

func _ready():
	$Bird.visible = false
	pass


func _process(delta):
	pass

func _input(event):
	if event.is_action_pressed("click"):
		if not start:
			start_game()
		if game_over:
			get_tree().reload_current_scene()
	pass
	
func start_game():
	$UI.game_start()
	$Bird.visible = true
	$Bird.gravity_scale = 5
	start = true	
	$PipeCreateTimer.start()
	pass


func game_over():
	$PipeCreateTimer.stop()
	$UI.game_over()
	game_over = true
	pass


func _on_Bird_bird_dead():
	game_over()
	pass
