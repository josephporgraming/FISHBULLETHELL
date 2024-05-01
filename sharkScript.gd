extends CharacterBody2D

@export var speed = 5
var player_pos
var target_pos
@onready var player = get_parent().get_node("fish(player)")
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.



func _physics_process(delta):
	player_pos = player.position
	target_pos = (player_pos - position).normalized()
	position += target_pos * speed
	look_at(player_pos)
	move_and_slide()