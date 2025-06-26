extends CharacterBody2D

@export var movement_speed : float = 500
var character_direction : Vector2

func _physics_process(_delta):
	character_direction.x = Input.get_axis("a", "d")
	character_direction.y = Input.get_axis("w", "s")
	
	#flip
	if character_direction.x > 0: %sprite.flip_h = false
	elif character_direction.y < 0: %sprite.flip_h = true
	
	if character_direction: 
		velocity = character_direction * movement_speed
		if %sprite.animation != "Walking": %sprite.animation = "Walking"
	else:
		velocity = velocity.move_toward(Vector2.ZERO, movement_speed)
		if %sprite.animation != "Idle": %sprite.animation = "Idle"
		
	move_and_slide()
