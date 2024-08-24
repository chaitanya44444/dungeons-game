extends CharacterBody2D

const SPEED = 30
var chase = false

func _ready():
	get_node("AP").play("Spawn")


func _physics_process(delta):
	var player = get_node("../Player")
	
	var direction = (player.position - position).normalized()
	velocity = direction * SPEED
	move_and_slide()
