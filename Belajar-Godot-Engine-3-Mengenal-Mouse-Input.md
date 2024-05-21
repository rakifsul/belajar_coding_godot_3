# Belajar Godot Engine 3 Mengenal Mouse Input

## Source Code Project Ini

https://github.com/rakifsul/belajar_coding_godot_3/tree/main/contoh_godot3_mouse_input

## Pendahuluan

Di tutorial ini, saya berasumsi bahwa Anda telah membaca tutorial keyboard input sebelumnya.

Sebaiknya baca dulu karena di sana diajarkan dasarnya, dan saya malas untuk mengulang-ulangnya.

Intinya, yang beda di sini hanyalah tombol apa yang dideteksi.

Pada tutorial keyboard input, yang dideteksi adalah tombol keyboard, sedangkan yang di sini adalah tombol mouse.

Jika Anda belum tahu apa itu tombol mouse, itu adalah 3 tombol yang ada di kiri, tengah, dan kanan dari mouse.

Khusus tombol tengah, biasanya kita menggunakannya untuk scroll.

Tapi, sebenarnya tombol scroll tadi bisa ditekan. Silakan dicoba dulu.

Jika Anda tidak menggunakan mouse karena menggunakan laptop, silakan pasang dulu mouse-nya karena saya tidak tahu apakah dengan trackpad script ini akan bekerja.

## Lebih Lanjut tentang Mouse Input

Mouse input dalam game memiliki beberapa manfaat yang signifikan:

-   Kontrol yang Responsif: Mouse input memungkinkan pengguna untuk melakukan tindakan secara langsung dan akurat. Posisi cursor dapat digunakan untuk mengarahkan arah pandang karakter atau menargetkan objek tertentu dengan presisi tinggi.
-   Interaksi yang Fleksibel: Penggunaan mouse memungkinkan berbagai macam interaksi dalam game, mulai dari memilih menu, menggeser objek, hingga membidik dan menembak dalam game tembak-menembak.
-   Kustomisasi Pengaturan: Mouse input memungkinkan pengguna untuk mengatur pengaturan mouse sesuai dengan preferensi mereka. Ini termasuk kecepatan kursor, sensitivitas mouse, atau pengaturan tombol mouse khusus.
-   Kemudahan Navigasi UI: Mouse input sangat cocok untuk navigasi antarmuka pengguna (UI) dalam game. Pengguna dapat dengan mudah mengklik tombol, menu, atau elemen UI lainnya untuk berinteraksi dengan game.
-   Pengalaman Pengguna yang Ditingkatkan: Dalam banyak kasus, menggunakan mouse untuk mengontrol permainan memberikan pengalaman pengguna yang lebih intuitif dan nyaman daripada pengontrol lainnya, seperti keyboard atau gamepad.
-   Kompatibilitas dengan Platform: Mouse input umumnya didukung oleh sebagian besar platform game, termasuk PC, Mac, dan beberapa platform mobile. Ini membuat game yang menggunakan mouse input lebih mudah diakses oleh berbagai pemain.

Secara keseluruhan, mouse input membawa fleksibilitas, responsifitas, dan kustomisasi yang tinggi dalam pengalaman bermain game, yang membantu dalam menciptakan pengalaman bermain yang menyenangkan dan memuaskan bagi pemain.

## Tujuan

Tujuan tutorial ini adalah:

-   Pembaca memahami mouse input dan dapat mendeteksinya dengan Godot Engine 3

## Prasyarat

Prasyarat tutorial ini adalah:

-   Menggunakan Godot Engine 3
-   Menggunakan mouse
-   Pernah coding sebelumnya

## Langkah-Langkah

Jika Anda telah membaca "[Belajar Godot Engine 3 Mengenal Keyboard Input](https://github.com/rakifsul/belajar_coding_godot_3/blob/main/Belajar-Godot-Engine-3-Mengenal-Keyboard-Input.md)" sebelumnya, maka di sana ada Node Spatial yang sudah di-attach dengan script "Spatial.gd".

Buka "Spatial.gd", kemudian replace kodenya dengan yang ini:

```
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
```

Selanjutnya, buka Project Settings > Input Map dan isi entry untuk "test_mouse_action".

Kemudian, jalankan scene dan coba klik tombol dan action tadi.

Nanti akan muncul teks di console sesuai dengan apa yang anda klik di mouse.

## Pembahasan

Yang perlu Anda kenali di tutorial ini adalah:

```
    # apakah tombol kiri mouse ditekan
    if(Input.is_mouse_button_pressed(BUTTON_LEFT)):
        print("left mouse button pressed")
```

Method is_mouse... yang diikuti parameter id dari tombol mouse, dalam hal ini BUTTON_LEFT.

Jika pada keyboard yang dipanggil adalah is_key... maka pada mouse adalah is_mouse...

Untuk yang ini:

```
    # apakah action "test_mouse_action" yang disetting di project setting ditekan
    if(Input.is_action_pressed("test_mouse_action")):
        print("test_mouse_action pressed")
```

Interface-nya masih sama, yakni is_action_pressed karena di Input Map kita juga bisa mendaftarkan mouse button.

## Penutup

Sekarang, seharusnya Anda telah mengenal mouse input.

Selanjutnya, silakan praktekkan apa yang telah Anda pelajari dalam tutorial ini.
