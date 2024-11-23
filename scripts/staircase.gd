extends Node3D

static var step = preload("res://scenes/staircase_step.tscn")

func _ready():
	var inst = step.instantiate()
	add_child(inst)
	
	for n in 50:
		inst = step.instantiate()
		inst.position.z = inst.position.z - 0.3 - n * 0.3
		inst.position.y = inst.position.y + 0.1 * n + 0.1
		add_child(inst)
