extends Node2D

const friendlyz=preload("res://Friendlies/f_zombie.tscn")
func _input(event):
	if event.is_action_released("Spawn Enemies"):
		var friendlyz1= friendlyz
		friendlyz1.position=get_global_mouse_position()
		get_node("Friendly-Zombies").add_child(friendlyz1)
