# file: GameManager.gd

extends Node # script ini di-extend dari Node

# ketika game baru dijalankan
func _ready():
	print("Game dimulai...")

# ganti scene ke "name"
func change_scene(name):
	# begini perintah untuk ganti scene
	get_tree().change_scene("res://Scenes/" + name + ".tscn")
