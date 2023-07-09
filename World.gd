extends Node2D

func _ready() -> void:
	_add_wall(Vector2(0,163),Vector2(1600,10))
	_add_wall(Vector2(0,-10),Vector2(1600,10))
	
	
func _add_wall(pos:Vector2,size:Vector2) -> void:
	var rect := RectangleShape2D.new()
	rect.set_extents(size)
	var collison_shape := CollisionShape2D.new()
	collison_shape.shape = rect
	
	var collison_obj := StaticBody2D.new()
	collison_obj.position = pos
	collison_obj.add_child(collison_shape)
	
	add_child(collison_obj)
	
