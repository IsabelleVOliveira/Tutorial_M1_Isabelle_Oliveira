extends Control

func _ready():
	pass 
	
	#change scene to level 01 again
func _on_Button_pressed():
	get_tree().change_scene("res://level1/level_01.tscn")

#quit the game
func _on_Button2_pressed():
	get_tree().quit()
