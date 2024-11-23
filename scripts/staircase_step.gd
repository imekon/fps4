extends Node3D

@onready var box = $CSGBox3D

func _ready():
	box.size.x = Globals.STAIR_WIDTH
	box.size.y = Globals.STAIR_HEIGHT
	box.size.z = Globals.STAIR_DEPTH
