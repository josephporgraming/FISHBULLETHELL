extends CharacterBody2D


const SPEED = 4000
var bullet_sceen = preload("res://bullet(player).tscn")
var bullet = bullet_sceen.instantiate()
# Get the gravity from the project settings to be synced with RigidBody nodes.

func _physics_process(delta):
	# sets rotation
	if get_global_mouse_position() != position:
		position += transform.x * SPEED * delta
	rotate(get_angle_to(get_global_mouse_position()))
	#makes sure the player is allways moveing "forward"
	#dash here
	if Input.is_action_pressed("click"):
		position += transform.x * 2000 * delta
		
	if Input.is_action_just_pressed("right click"):
		get_parent().add_child(bullet)
		bullet.position = position
		bullet.rotation = rotation
func _on_timer_timeout():
	get_parent().remove_child(bullet)

func _on_hit_box_area_entered(area):
	if area.has_method("enemy"):
		print("gg")
