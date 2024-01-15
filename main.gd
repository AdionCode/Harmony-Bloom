extends Node2D

@onready var scene = preload("res://scene/plant.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var mouse_position = get_viewport().get_mouse_position()
	if Input.is_action_pressed("mouse_click"):
		var instance = scene.instantiate()
		instance.position = mouse_position
		add_child(instance)
