extends Node2D


func play(_name: String):
	var sfx = find_node(_name)
	if sfx is AudioStreamPlayer:
		sfx.play()
