extends Node3D

static var step = preload("res://scenes/staircase_step.tscn")

func _ready():
	var inst = step.instantiate()
	add_child(inst)
	
	for n in 50:
		inst = step.instantiate()
		inst.position.z = inst.position.z - (1 + n) * Globals.STAIR_OFFSET
		inst.position.y = inst.position.y + Globals.STAIR_HEIGHT * (n + 1)
		add_child(inst)
