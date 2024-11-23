extends Node3D

static var tree = preload("res://scenes/tree.tscn")

func _ready():
	for y in 4:
		for x in 4:
			var inst = tree.instantiate()
			inst.position.x = -8 + x * 4 + randi() % 3 - 1.5
			inst.position.y = inst.position.y - 0.5
			inst.position.z = -8 + y * 4 + randi() % 3 - 1.5
			inst.add_to_group("tree")
			add_child(inst)
