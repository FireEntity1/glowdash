extends Node2D

var cols = [randf(),randf(),randf()]

func _ready():
	var material = get_material()
	if material:
		material.set_shader_parameter("screen_texture", get_viewport().get_texture())

func _physics_process(delta):
	$bg.material.set_shader_parameter("fire_color",Color(lerp($bg.material.get_shader_parameter("fire_color").r, cols[0],0.1),lerp($bg.material.get_shader_parameter("fire_color").g, cols[1],0.1),lerp($bg.material.get_shader_parameter("fire_color").b, cols[2],0.1)))

func _on_spawn_timeout():
	add_child(preload("res://Scenes/obstacle.tscn").instantiate())

func _on_decoration_timeout():
	cols = [randf(),randf(),randf()]

func _on_border_body_entered(body):
	Global.hit()
