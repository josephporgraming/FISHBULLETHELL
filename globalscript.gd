extends Node
var points :int
var invunrability:bool = false
var health:int = 3
@onready var lol =$"loading down"
func drain_health():
	if  invunrability == false:
		health -= 1
		invunrability = true
		lol.start()


func _on_timer_timeout():
	invunrability = false
	lol.stop()
	
