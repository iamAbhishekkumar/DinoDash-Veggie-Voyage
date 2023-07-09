extends RigidBody2D


const UP_IMPULSE: float = -55.0
onready var animationPlayer = $AnimationPlayer

func _ready():
	animationPlayer.play("Move")

func _input(event : InputEvent):
	if event is InputEventKey:
		if event.is_action_pressed("ui_select"):
			jump()
			

func jump() -> void:
	set_linear_velocity(Vector2(0,0))
	apply_central_impulse(Vector2(0,UP_IMPULSE))

	
const ACCELERATION = 10
const FRICTION = 500
const MAX_SPEED = 100

"""


var velocity = Vector2.ZERO
var timer

func _ready():
	timer = Timer.new()
	timer.connect("timeout",self,"_on_timer_timeout") 
	#timeout is what says in docs, in signals
	#self is who respond to the callback
	#_on_timer_timeout is the callback, can have any name
	add_child(timer) #to process
	timer.start() #to start
	
func _on_timer_timeout():
   spawn_tomato()

func _physics_process(delta):
	animationState.travel("Move")
	
func spawn_tomato():
	var new_tomato
	var tomato = preload("res://Tomato/Tomato.tscn")
	new_tomato = tomato.instance()
	new_tomato.position = Vector2(0,-50)
	add_child(new_tomato)
	
"""
	


