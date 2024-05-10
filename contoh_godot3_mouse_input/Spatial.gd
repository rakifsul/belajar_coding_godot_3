# file: Spatial.gd

# extend dari Spatial
extends Spatial

# pada setiap frame. delta adalah selisih waktu.
func _process(delta):
	# apakah tombol kiri mouse ditekan
	if(Input.is_mouse_button_pressed(BUTTON_LEFT)):
		print("left mouse button pressed")
	# apakah tombol kanan mouse ditekan
	if(Input.is_mouse_button_pressed(BUTTON_RIGHT)):
		print("right mouse button pressed")
	# apakah tombol tengah mouse ditekan
	if(Input.is_mouse_button_pressed(BUTTON_MIDDLE)):
		print("middle mouse button pressed")
	# apakah action "test_mouse_action" yang disetting di project setting ditekan
	if(Input.is_action_pressed("test_mouse_action")):
		print("test_mouse_action pressed")
