extends CharacterBody2D

const SPEED = 50.0
var target = position

func _input(event):
	if event.is_action_pressed("Click"):

		target = get_global_mouse_position()
func _physics_process(delta: float) -> void:
	var direction = (target - position).normalized()  # Ensure direction is normalized
	var distance = position.distance_to(target)
	if distance > 0.000000000000000000000000000007:
		velocity = direction * SPEED
	else:
		velocity = Vector2.ZERO  # Stop moving when close to the target

	# Call move_and_slide with no arguments
	move_and_slide()
	
	# Debugging: print the current velocity and direction
	print("Velocity: ", velocity, " Direction: ", direction)

	
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
