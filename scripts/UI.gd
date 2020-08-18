extends Node2D


func _process(delta):
	$ScoreLabel.text = str(Global.score)
	pass

func game_start():
	$ScoreLabel.visible = true
	$GetReadyMessage.visible = false
	pass


func game_over():
	$ScoreLabel.visible = false
	$GameOver.visible = true
	$GameOver/FinalScoreLabel.text = str(Global.score)
	pass	
