extends Control

func _ready():
	pass

func _on_Button_pressed():
	# change scene to the level1
	get_tree().change_scene("res://scenes/howToPLay.tscn")

	# quit the game
func _on_Button3_pressed():
	get_tree().quit()
