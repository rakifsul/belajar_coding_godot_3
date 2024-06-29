# extend dari MeshInstance
extends MeshInstance

# abaikan
func _ready():
	pass

# setiap frame
func _process(delta):
	if Input.is_key_pressed(KEY_A):
		# jika key a ditekan, jalankan ke kiri
		self.translate(Vector3(-1,0,0) *  delta * 10)
		
	if Input.is_key_pressed(KEY_D):
		# jika key d ditekan, jalankan ke kanan
		self.translate(Vector3(1,0,0) *  delta * 10)
