# file: Scene1.gd

extends Spatial # script ini di-extend dari Spatial

var timer = 0.0 # inisialisasi variabel timer

# ketika game baru dijalankan
func _ready():
	print("Scene1 dimulai...")

# saat game berjalan. delta adalah selisih waktu
func _process(delta):
	timer += delta
	if (timer > 3.0):
		GameManager.change_scene("Scene2") # ganti scene ke Scene2
		timer = 0.0
