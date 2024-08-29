extends CharacterBody2D

@export var speed = 60
var mouse_position = null
@export var follow = false

func _physics_process(delta):
	if Input.is_action_pressed("Click"):
		follow =true
	if Input.is_action_just_released("Click"):
		follow =false
	if follow ==true:
		mouse_position = get_global_mouse_position()
		velocity = Vector2(0, 0)



		var direction = (mouse_position - position).normalized()
			
		if position.distance_to(mouse_position) > 0.00005:
			velocity = direction * speed
		else:
			# Stop the player when close by hahahahhahha
			velocity = Vector2.ZERO
	
		move_and_slide()
