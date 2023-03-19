extends Node2D

func _ready():
	pass

func _on_Area2D_body_entered(body):
	#change scene to the winner scene
	get_tree().change_scene("res://scenes/winnerScene.tscn")

func _on_fogueteSprite_frame_changed():
	pass 
