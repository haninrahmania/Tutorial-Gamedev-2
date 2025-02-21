extends RigidBody2D
@export var speed = 500.0

var direction = Vector2.DOWN  # Default movement direction
var can_rotate = false  # Prevents rotation unless colliding with a platform
var death_y_top = 0  
var death_x_left = 0
var death_y_bottom = 1000
var death_x_right = 1800

func _physics_process(delta):
	if position.y < death_y_top:  # If the player falls too far
		reset_level()
	elif position.x < death_x_left:  # If the player falls too far
		reset_level()
	elif position.y > death_y_bottom:  # If the player falls too far
		reset_level()
	elif position.x > death_x_right:  # If the player falls too far
		reset_level()

func reset_level():
	print("Player died! Restarting level...")
	get_tree().reload_current_scene()  # Reloads the current level

func _ready():
	# Enable collision detection
	contact_monitor = true
	max_contacts_reported = 1  # Ensure collisions are detected
	linear_velocity = direction * speed  # Set initial movement

func _integrate_forces(state):
	# Keep moving forward in the current direction
	linear_velocity = direction * speed

	# Allow rotation only if colliding with a platform
	if can_rotate:
		if Input.is_action_just_pressed("move_right"):
			direction = Vector2.RIGHT
			rotation_degrees = 270  # Right should be 0 degrees
			can_rotate = false  # Lock rotation again
		elif Input.is_action_just_pressed("move_left"):
			direction = Vector2.LEFT
			rotation_degrees = 90  # Left should be 180 degrees
			can_rotate = false
		elif Input.is_action_just_pressed("move_up"):
			direction = Vector2.UP
			rotation_degrees = 180  # Up should be 270 degrees
			can_rotate = false
		elif Input.is_action_just_pressed("move_down"):
			direction = Vector2.DOWN
			rotation_degrees = 0  # Down should be 90 degrees
			can_rotate = false

func _on_Plane_body_entered(body):
	# If the plane hits a platform, allow rotation
	if body.is_in_group("platforms"):
		can_rotate = true  # Unlock rotation when hitting a platform


func _on_body_entered(body: Node) -> void:
	pass # Replace with function body.
