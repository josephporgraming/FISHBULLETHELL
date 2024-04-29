extends Label

var points = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	text = str(points) 


func _on_timer_timeout():
	points +=1
