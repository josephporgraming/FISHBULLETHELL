extends Label

var points = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = str(points)

func _on_timer_timeout():
	points += 1
