extends Node

signal health_changed
var points :int
var invunrability:bool = false
var health:int = 3
@onready var lol:Timer = get_node("loading down")
var damege = false

func drain_health():
	if  invunrability == false:
		health -= 1
		invunrability = true
		
		lol.start()
func playerBlink():
	#I don't know how to do this
	pass

func _on_timer_timeout():
	invunrability = false
	lol.stop()
	
