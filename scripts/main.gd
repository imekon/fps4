extends Node3D

@onready var stage = $stage
@onready var player = $player
@onready var fps = $HUD/FPS
@onready var trees = $HUD/Trees
@onready var walls = $HUD/Walls

func _ready():
	randomize()
	
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
	player.position.x = 5
	player.position.z = -5
	
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
	
	var enclosed = preload("res://scenes/enclosed_floor.tscn")
	inst = enclosed.instantiate()
	inst.walls = Globals.WALL_Y | Globals.WALL_W | Globals.TREES
	inst.position.x = 0
	inst.position.z = 20
	stage.add_child(inst)
	
	var staircase = preload("res://scenes/staircase.tscn")
	inst = staircase.instantiate()
	inst.position.x = -5
	inst.position.y = -0.4
	stage.add_child(inst)
	
	inst = staircase.instantiate()
	inst.position.x = 5
	inst.position.y = 5 - 0.4
	inst.position.z = -5
	inst.rotate_y(deg_to_rad(90))
	stage.add_child(inst)

func _process(_delta: float) -> void:
	fps.text = "FPS: " + str(Engine.get_frames_per_second())
	trees.text = "Trees: " + str(get_tree().get_node_count_in_group("tree"))
	walls.text = "Walls: " + str(get_tree().get_node_count_in_group("wall"))
	
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()
