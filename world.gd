extends Node2D

@onready var hearts_thing = $"CanvasLayer/health container"

# Called when the node enters the scene tree for the first time.
func _ready():
	hearts_thing.set_hearts(3)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if AtuoLoauder.damege == true:
		hearts_thing.update_hearts(AtuoLoauder.health)
