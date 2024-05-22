extends Label

var points: int = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	text =  "points: " + str(points) 


func _on_timer_timeout():
	points +=1
	AtuoLoauder.points = points
