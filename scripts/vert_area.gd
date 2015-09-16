
extends Area2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	set_process_input(true)
	
func _input(event):
   # if user left clicks
	if (event.type == InputEvent.MOUSE_BUTTON and event.button_index == 2):
		var scene = preload("res://box.scn") # will load when parsing the script
		var boxNode = scene.instance()
		get_parent().add_child(boxNode)
		boxNode.set_pos(Vector2(event.x,event.y))
	if (event.type == InputEvent.MOUSE_BUTTON and event.button_index == 1):
	   	if event.is_pressed():
	       self.set_space_override_mode(1)
	    else:
	       self.set_space_override_mode(0)
	elif event.type == InputEvent.MOUSE_MOTION:
		 self.set_pos(Vector2(event.x,event.y))