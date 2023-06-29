extends ParallaxLayer

var player_speed = -20
func _process(delta):
	self.motion_offset.x += player_speed * delta
