extends Area2D

func _ready():
	connect("body_entered", _on_Objective_body_entered)
	print("Get to Fasilkom!!")

func _on_Objective_body_entered(body: RigidBody2D):
	if (body.name == "Plane"):
		print("You made it to class!!")
		get_tree().reload_current_scene()
