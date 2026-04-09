extends CharacterBody2D

var speed = 100;

func _physics_process(delta: float) -> void:
	
	velocity.x = speed 

	move_and_slide()
