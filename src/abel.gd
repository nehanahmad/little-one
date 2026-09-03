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
		sprite.play("walk") # Replace "walk" with your actual moving animation name
		if direction.x != 0:
			sprite.flip_h = direction.x < 0
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)
		sprite.play("default") # Replace with your idle animation name
		

	# Apply the movement and handle floor collisions
	move_and_slide()
