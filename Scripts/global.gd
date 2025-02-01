extends Node

var highscore = 0
var score = 0

func _ready():
	pass

func _process(delta):
	pass

func hit():
	get_tree().change_scene_to_file("res://Scenes/title.tscn")
	if highscore < score:
		highscore = score

func passed():
	score += 1

func getHighscore():
	return highscore
