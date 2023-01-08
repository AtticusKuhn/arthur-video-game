extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
func _physics_process(delta):
    position.x += 10 #this is to make the bullet fly to the right when fired
func _ready():
	hide()
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
