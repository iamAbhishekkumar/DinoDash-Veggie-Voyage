extends KinematicBody2D

const MAX_SPEED = 100
var velocity = Vector2.ZERO

	
func _physics_process(delta):
	
	move_and_slide(velocity)
