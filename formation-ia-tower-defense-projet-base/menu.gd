extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Menu ready!")

func _on_Start_pressed():
	print("Load level")
	#get_node("/root/global").goto_scene("res://Main.tscn")
	get_tree().change_scene("res://Main.tscn")
	var test = get_tree().get_root()
	print(test)

func _on_Quit_pressed():
	get_tree().quit()
