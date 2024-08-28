extends CharacterBody2D

const SPEED = 30
var chase = false
@onready var player: CharacterBody2D = $"."

func _ready():
	get_node("AP").play("Spawn")
'
func _physics_process(delta):

	var direction = (player.position - position).normalized()
	velocity = direction * SPEED
	move_and_slide()
'
