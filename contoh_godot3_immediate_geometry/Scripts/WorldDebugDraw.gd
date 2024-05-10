# file: WorldDebugDraw.gd

# extend script ini dari ImmediateGeometry
extends ImmediateGeometry

# ambil referensi dari Node
onready var sphere_1 = get_node("../Sphere1")
onready var sphere_2 = get_node("../Sphere2")

# abaikan
func _ready():
	pass

# pada setiap frame. delta adalah selisih waktu antar frame
func _process(delta):
	# kita mengambil posisi masing-masing sphere dengan global_transform.origin
	var pos_1 = sphere_1.global_transform.origin
	var pos_2 = sphere_2.global_transform.origin

	# begin: menggambar garis
	begin(Mesh.PRIMITIVE_LINE_STRIP)

	set_color(Color.red)
	add_vertex(pos_1)
	add_vertex(pos_2)

	end()
	# end: menggambar garis

	# begin: menggambar sphere tambahan berwarna kuning
	begin(Mesh.PRIMITIVE_TRIANGLES)
	set_color(Color.yellow)
	add_sphere(40,40,5, false)

	end()
	# end: menggambar sphere tambahan berwarna kuning
