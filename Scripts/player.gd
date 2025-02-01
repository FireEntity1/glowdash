extends CharacterBody2D

const JUMP_VELOCITY = -1200.0

func _ready():
	velocity.y = JUMP_VELOCITY

func _physics_process(delta):
	if not is_on_floor():
		velocity += get_gravity() * delta * 2
	
	if Input.is_action_pressed("ui_accept"):
		velocity.y = JUMP_VELOCITY
		$jump.play()
	
	var blur_dir = Vector2(0.4,velocity.y/1500)
	$color.material.set_shader_parameter("dir", blur_dir)
	
	move_and_slide()
