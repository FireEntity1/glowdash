extends Node2D

func _ready():
	var material = get_material()
	if material:
		material.set_shader_parameter("screen_texture", get_viewport().get_texture())
	self.position.y = randi_range(100,900)

func _process(delta):
	self.position.x -= delta*2000
	if self.position.x < -20:
		Global.passed()
		queue_free()

func _on_area_body_entered(body):
	if body is CharacterBody2D:
		Global.hit()
