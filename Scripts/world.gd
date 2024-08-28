extends Node2D
var rng = RandomNumberGenerator.new()
const friendlyz=preload("res://Mobs/Friendlies/f_zombie.tscn")
const hostile_zombie=preload("res://Mobs/Enemies/e_zombies.tscn")
func _input(event):
	if event.is_action_released("Spawn Enemies"):
		var friendlyz1= friendlyz.instantiate()
		friendlyz1.position=get_global_mouse_position()
		get_node("Friendly-Zombies").add_child(friendlyz1)


func _on_timer_timeout() -> void:
	rng.randomize()
	var Hostile_Zombie1 = hostile_zombie.instantiate()
	Hostile_Zombie1.position.y = rng.randi_range(-128,176)
	Hostile_Zombie1.position.x = rng.randi_range(-128,191)
	get_node("Hostile").add_child(Hostile_Zombie1)
