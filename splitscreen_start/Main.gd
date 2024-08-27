extends Node

onready var viewport1 = $Viewports/ViewportContainer1/Viewport1
onready var viewport2 = $Viewports/ViewportContainer2/Viewport2
onready var camera1 = $Viewports/ViewportContainer1/Viewport1/Camera2D
onready var camera2 = $Viewports/ViewportContainer2/Viewport2/Camera2D
onready var world = $Viewports/ViewportContainer1/Viewport1/World

func _ready():
	print(world)
	#viewport1.world_2d = world
	viewport2.world_2d = viewport1.world_2d
	camera1.target=world.get_node("Player_1")
	#print(camera1.target)
	camera2.target=world.get_node("Player_2")
	#print(camera2.target)
