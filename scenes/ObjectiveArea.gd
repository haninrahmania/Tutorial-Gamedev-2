extends Area2D

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "BlueShip"):
		print("Reached objective!")
		load_new_level()

func load_new_level():
	get_tree().change_scene_to_file("res://scenes/NewLevel.tscn")  # Change path to your actual scene
