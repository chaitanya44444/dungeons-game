extends CharacterBody2D

const SPEED = 30



func _ready():
	get_node("AP").play("Spawn")

func _physics_process(_delta):
	var player = get_node("../../Friendly-Zombies/Player")
	var direction = (player.position - position).normalized()
	velocity = direction * SPEED
	move_and_slide()


func _on_player_cos_body_entered(body: Node2D) -> void:
	if body.name=="Player":
		queue_free()
