extends CharacterBody2D

var projectile: PackedScene = preload("res://Scenes/bullet.tscn")

const SPEED = 300.0

func _ready() -> void:
	var bullet := projectile.instantiate()

func _physics_process(delta: float) -> void:
	
	var direction:= Input.get_vector("moveLeft","moveRight","moveUp", "moveDown")
	if direction:
		velocity = direction * SPEED
	else:
		velocity = Vector2.ZERO
	
	if Input.is_action_just_pressed("ui_accept"):
		print("Shooting")
		var projectile = projectile.instantiate()
		projectile.global_position = position
		get_parent().add_child(projectile)
		
		

	move_and_slide()
