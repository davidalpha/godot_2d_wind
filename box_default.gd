
extends RigidBody2D

# member variables here, example:
# var a=2
# var b="textvar"

func _on_goal_body_enter( body ):
	self.get_child(sprite)
