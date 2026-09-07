extends CharacterBody3D

const SPEED = 5.0
@onready var sprite = $AnimatedSprite3D

func _physics_process(delta):
	# Get player input (Arrows or WASD by default)
	var input_dir = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	# Translate 2D input into 3D movement on the X and Z axes
	var direction = Vector3(input_dir.x, 0, input_dir.y).normalized()
	
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
		
		# Check which axis has the stronger input
		if abs(direction.x) > abs(direction.z):
			# Moving left or right
			sprite.play("left_right")
			sprite.flip_h = direction.x > 0
		else:
			# Moving forward or backward
			sprite.play("front_back")
			
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)
		sprite.play("idle")
		
	# Apply the movement and handle floor collisions
	move_and_slide()
