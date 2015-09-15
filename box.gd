
extends RigidBody2D


func _fixed_process(delta):

	if (is_colliding()):
		print("aaaah")
		var n = get_collision_normal()
		motion = n.slide( motion )
		velocity = n.slide( velocity )
		move( motion )

func _ready():
	#Initalization here
	set_fixed_process(true)
	pass
