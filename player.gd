extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()
#onready var BULLET = preload("res://Bullet.tscn").getInstance();

func fire():
  #var direction = Vector2(1.0,0.0).rotated(angle).normalized()
	var bullet = load("res://Bullet.tscn").instance()
  #bullet.direction = direction
	bullet.position = position # get_pos()
	get_parent().add_child(bullet)
	bullet.show()

func get_input():
	velocity = Vector2()

	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
	if Input.is_action_pressed("up"):
		velocity.y -= 1
		fire()
	velocity = velocity.normalized() * speed

func _physics_process(delta):
    get_input()
    velocity = move_and_slide(velocity)

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
