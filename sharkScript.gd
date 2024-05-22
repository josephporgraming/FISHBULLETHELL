extends CharacterBody2D

signal health_changed
@export var speed = 3.5
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


func _on_area_2d_body_entered(body):
	print('LOL')
	if body.is_in_group("player"):
		AtuoLoauder.drain_health()
		AtuoLoauder.damege = true
