extends CharacterBody2D

@export var movement_speed : float = 500
var character_direction : Vector2

func _physics_process(_delta):
	character_direction.x = Input.get_axis("a", "d")
	character_direction.y = Input.get_axis("w", "s")
	
	#flip
		
	move_and_slide()
