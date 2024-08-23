extends CharacterBody2D

@export var speed = 200
var mouse_position = null

func _physics_process(delta):
	mouse_position = get_global_mouse_position()
	velocity = Vector2(0, 0)


	if Input.is_action_pressed("Click"):
		var direction = (mouse_position - position).normalized()
		
		if position.distance_to(mouse_position) > 0.00005:
			velocity = direction * speed
		else:
			# Stop the player when close to the target
			velocity = Vector2.ZERO
	
	move_and_slide()

#func _physics_process(delta: float) -> void:
#	var direction = (target - position).normalized()  # Ensure direction is normalized
#	var distance = position.distance_to(target)
#	if distance > 1:
#		velocity = direction * SPEED
#	else:
#		velocity = Vector2.ZERO  # Stop moving when close to the target

	# Call move_and_slide with no arguments
#	move_and_slide()
	
	# Debugging: print the current velocity and direction
	
#	if not is_on_floor():
#		velocity += get_gravity() * delta



	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	#var direction := Input.get_axis("ui_left", "ui_right")
	#if direction:
	#	velocity.x = direction * SPEED
	#lse:
	#	velocity.x = move_toward(velocity.x, 0, SPEED)

	#move_and_slide()
