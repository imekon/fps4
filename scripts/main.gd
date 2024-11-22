extends Node3D

@onready var stage = $stage

func _ready():
	randomize()
	
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
	var floor = preload("res://scenes/empty_floor.tscn")
	var inst = floor.instantiate()
	stage.add_child(inst)
	
	var woods = preload("res://scenes/woods_floor.tscn")
	var inst2 = woods.instantiate()
	inst2.position.x = -10
	inst2.position.y = inst.position.y - 0.1
	stage.add_child(inst2)
