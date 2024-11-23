extends Node3D

@export var walls = 0

static var wall = preload("res://scenes/wall.tscn")
static var tree = preload("res://scenes/tree.tscn")

func _ready():
	if walls & Globals.WALL_X != 0:
		var inst = wall.instantiate()
		inst.position.y = -1
		inst.position.z = -10
		inst.add_to_group("wall")
		add_child(inst)
	
	if walls & Globals.WALL_Y != 0:
		var inst = wall.instantiate()
		inst.position.y = -1
		inst.position.z = 10
		inst.add_to_group("wall")
		add_child(inst)

	if walls & Globals.WALL_Z != 0:
		var inst = wall.instantiate()
		inst.position.y = -1
		inst.position.x = -10
		inst.rotate_y(deg_to_rad(90))
		inst.add_to_group("wall")
		add_child(inst)
		
	if walls & Globals.WALL_W != 0:
		var inst = wall.instantiate()
		inst.position.y = -1
		inst.position.x = 10
		inst.rotate_y(deg_to_rad(90))
		inst.add_to_group("wall")
		add_child(inst)
		
	if walls & Globals.TREES != 0:
		var inst = tree.instantiate()
		inst.position.x = -5 + randi() % 3 - 1.5
		inst.position.y = inst.position.y - 0.5
		inst.position.z = -5 + randi() % 3 - 1.5
		inst.add_to_group("tree")
		add_child(inst)

	if walls & Globals.WOODS != 0:
		for y in 4:
			for x in 4:
				var inst = tree.instantiate()
				inst.position.x = -8 + x * 4 + randi() % 3 - 1.5
				inst.position.y = inst.position.y - 0.5
				inst.position.z = -8 + y * 4 + randi() % 3 - 1.5
				inst.add_to_group("tree")
				add_child(inst)
