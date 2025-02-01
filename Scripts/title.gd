extends Node2D

func _ready():
	pass

func _process(delta):
	$fade.color.a -= delta*2
	$hs.text = str("Highscore: " + str(Global.getHighscore()))

func _on_play_button_up():
	$start.play()
	await get_tree().create_timer(1)
	get_tree().change_scene_to_file("res://Scenes/main.tscn")
