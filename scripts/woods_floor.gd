extends Node3D

func _onready():
	var tree = preload("res://scenes/tree.tscn")
	
	for y in 4:
		for x in 4:
			var inst = tree.instantiate()
			inst.position.x = -8 + x * 4 + randi() % 3 - 1.5
			inst.position.z = -8 + y * 4 + randi() % 3 - 1.5
			add_child(inst)
