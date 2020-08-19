extends Timer


var pipe = preload("res://scenes/Pipes.tscn")


func _on_PipeCreateTimer_timeout():
	var pipe_instance = pipe.instance()
	add_child(pipe_instance)
	pass
