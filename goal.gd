
extends Area2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	print (get_owner().get_name())



func _on_goal_body_enter( body ):
	print(body.get_name())
	if body.get_name() == "box":
		get_node("Label").set_text("GOAL!!!!")
