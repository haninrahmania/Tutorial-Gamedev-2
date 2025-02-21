extends RigidBody2D
@export var speed = 500.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.




func _process(delta):
	pass
	#if Input.is_action_pressed("move_right"):
		#move_local_x(speed * delta, false)
	#
	#if Input.is_action_pressed("move_left"):
		#move_local_x(-speed * delta, false)
		#
	#if Input.is_action_pressed("move_up"):
		#move_local_y(-speed * delta, false)
	#
	#if Input.is_action_pressed("move_down"):
		#move_local_y(speed * delta, false)
