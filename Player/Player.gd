extends RigidBody2D

const ACCELERATION = 10
const FRICTION = 500
const MAX_SPEED = 100


onready var animationPlayer = $AnimationPlayer
onready var animationTree = $AnimationTree
onready var animationState = animationTree.get("parameters/playback")

var velocity = Vector2.ZERO

func _physics_process(delta):
	animationState.travel("Move")
	

	


