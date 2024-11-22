extends Node3D

@onready var stage = $stage

func _ready():
	randomize()
	
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
	var floor = preload("res://scenes/empty_floor.tscn")
	var inst = floor.instantiate()
	stage.add_child(inst)
	
	inst = floor.instantiate()
	inst.position.z = -20
	stage.add_child(inst)

	inst = floor.instantiate()
	inst.position.z = 20
	stage.add_child(inst)

	var woods = preload("res://scenes/woods_floor.tscn")
	inst = woods.instantiate()
	inst.position.x = -20
	inst.position.y = inst.position.y - 0.1
	stage.add_child(inst)
	
	inst = woods.instantiate()
	inst.position.x = -20
	inst.position.y = inst.position.y - 0.1
	inst.position.z = -20
	stage.add_child(inst)
	
	inst = woods.instantiate()
	inst.position.x = -20
	inst.position.y = inst.position.y - 0.1
	inst.position.z = 20
	stage.add_child(inst)
