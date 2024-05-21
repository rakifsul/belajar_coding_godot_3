# Belajar Godot Engine Mengenal Input Event

## Source Code Project Ini

https://github.com/rakifsul/belajar_coding_godot_3/tree/main/contoh_godot3_input_event

## Pendahuluan

Pada tutorial sebelumnya, input ditangani dengan metode polling.

Artinya, di setiap frame cek status dari input, seperti key maupun mouse button.

Di Godot Engine, ada cara lainnya, yakni dengan menggunakan event.

Event itulah yang disebut input event.

Pada tutorial ini, saya membahas penggunaan input event di Godot Engine 3.

## Lebih Lanjut tentang Input Event

Input event di Godot Engine 3 merujuk pada aksi input yang diterima dari pengguna, seperti tombol keyboard yang ditekan, klik mouse, atau sentuhan layar.

Godot menyediakan sistem input yang kuat yang memungkinkan untuk menanggapi berbagai jenis input dengan mudah dan efisien.

Saat pengguna berinteraksi dengan permainan atau aplikasi, input events dipancarkan dan dapat ditangkap oleh skrip atau objek untuk memicu reaksi yang sesuai.

Dengan menggunakan input events, pengembang dapat membuat kontrol pengguna yang responsif dan dinamis, serta menanggapi interaksi pengguna dengan lingkungan permainan atau aplikasi.

Ini adalah bagian integral dari pengembangan permainan dan aplikasi di Godot Engine 3 dan memungkinkan untuk membuat pengalaman pengguna yang lebih menarik dan interaktif.

## Tujuan

Tujuan dari tutorial ini adalah:

-   Pembaca memahami input event dan dapat menggunakannya di project Godot Engine 3.

## Prasyarat

Prasyarat tutorial ini adalah:

-   Menggunakan Godot Engine 3
-   Pernah melakukan coding sebelumnya
-   Telah membaca dan mempraktekkan tutorial keyboard input ini.

## Langkah-Langkah

Jika Anda telah mengikuti tutorial keyboard input, maka Anda akan mendapati script "Spatial.gd" yang telah ter-attach ke Node Spatial.

Gunakan kembali script tersebut.

Buka dan replace isinya dengan kode ini:

```
# file: Spatial.gd

# extend dari Spatial
extends Spatial

# saat ada signal input
func _input(event):
    # jika event berupa gerakan mouse
    if event is InputEventMouseMotion:
        # print posisi kursor relatif nya
        print(event.relative)
    # jika event berupa tombol
    if event is InputEventMouseButton:
        # apakah ini ditekan?
        if(event.pressed):
            # print tombol yang manakah
            print(event.button_index)
    # jika event berupa key dari keyboard
    if event is InputEventKey:
        # apakah ini ditekan?
        if(event.pressed):
            # apakah ini baru saja ditekan?
            if(event.echo == false):
                print(char(event.scancode) + " is just pressed")
            # kalau bukan berarti sedang ditekan sambil ditahan
            else:
                print(char(event.scancode) + " is pressed")
```

Selanjutnya, jalankan scene tersebut dengan tombol play.

Jika Anda menekan keyboard atau mouse button, atau menggerakkan mouse, maka akan tampil teks di console dari Godot Engine.

## Pembahasan

Pertama, kita meng-extend script ini dari class Spatial:

```
# extend dari Spatial
extends Spatial
```

Dengan cara itu, kita mendapat warisan method dari class Spatial.

Selanjutnya, karena Spatial dapat menerima callback \_input, maka kita akan tulis seperti ini:

```
# saat ada signal input
func _input(event):
    # jika event berupa gerakan mouse
    if event is InputEventMouseMotion:
        # print posisi kursor relatif nya
        print(event.relative)
    # jika event berupa tombol
    if event is InputEventMouseButton:
        # apakah ini ditekan?
        if(event.pressed):
            # print tombol yang manakah
            print(event.button_index)
    # jika event berupa key dari keyboard
    if event is InputEventKey:
        # apakah ini ditekan?
        if(event.pressed):
            # apakah ini baru saja ditekan?
            if(event.echo == false):
                print(char(event.scancode) + " is just pressed")
            # kalau bukan berarti sedang ditekan sambil ditahan
            else:
                print(char(event.scancode) + " is pressed")
```

Perhatikan pada script di atas, kita menggunakan callback \_input dan bukannya callback \_process.

Artinya event tersebut tidak terjadi setiap frame, melainkan jika ada input dari user.

Catatan: Kenapa saya sebut callback?

Itu karena biasanya, dalam game engine, kode game engine biasanya memanggil kode yang ada di dalam lingkungan scripting untuk keperluan yang umum.

Misalnya saja, pemangilan fungsi yang dijalankan tiap frame seperti \_process.

Anda akan lebih paham tentang hal tersebut jika pernah membuat game engine.

Karena pada dasarnya fungsi tersebut dipanggil, maka saya sebut callback saja.

Karena parameternya hanya satu, yakni event saja, maka kita harus mengungkap event input apa yang terjadi. Caranya adalah dengan mempertanyakan:

-   if event is InputEventMouseMotion: (apakah event adalah gerakan mouse)
-   if event is InputEventMouseButton: (apakah event adalah tombol mouse)
-   if event is InputEventKey: (apakah event adalah key dari keyboard)

Untuk konsekuensi dari masing-masing if di atas, penjelasannya ada di komentar di bawah masing-masing if tadi.

## Penutup

Sekarang, seharusnya Anda sudah paham tentang konsep input event.

Selanjutnya, coba praktekkan hal yang sudah Anda pelajari tadi.
