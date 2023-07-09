extends RigidBody2D

onready var animationPlayer = $AnimationPlayer

func _process(delta):
	animationPlayer.play("Idle")
	
	
