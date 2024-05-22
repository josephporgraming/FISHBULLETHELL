extends HBoxContainer

@onready var heartsgui= preload("res://panel.tscn")
var hearts  
var hearts_num = 3
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func queue_free_children(node: Node) -> void:
	for x in node.get_children():
		x.Delte()
func set_hearts(number_of_hearts:int):
	for i in range(number_of_hearts):
		var hearts = heartsgui.instantiate()
		add_child(hearts)
func update_hearts(numb:int):
	var hearts = heartsgui.instantiate()
	queue_free_children(hearts)
	for i in range(numb):
		hearts = heartsgui.instantiate()
		add_child(hearts)
