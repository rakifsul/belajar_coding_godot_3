# Belajar Godot Engine 3 Mengenal Keyboard Input

## Source Code Project Ini

https://github.com/rakifsul/belajar_coding_godot_3/tree/main/contoh_godot3_keyboard_input

## Pendahuluan

Godot Engine 3 bisa mendeteksi status dari keyboard.

Apakah itu ditekan, di-release, dan sebagainya.

Hal tersebut diperlukan karena pada game yang dikendalikan keyboard, game tersebut harus mengetahui status dari key agar karakter di dalam game bisa dikendalikan dengan benar.

Sebagai contoh.

Pada game first person shooter, tombol w, misalnya, harus bisa terdeteksi oleh game agar game tahu kapan karakternya harus bergerak maju.

Begitu pula pada tombol lainnya.

Pendeteksian status key dari keyboard bisa dilakukan dengan menggunakan class Input dari Godot Engine.

Bagaimana cara kerjanya? Mari dipelajari.

## Lebih Lanjut tentang Keyboard Input

Keyboard input memiliki beberapa manfaat penting dalam pengembangan game:

Kontrol Karakter yang Fleksibel: Keyboard memberikan kontrol yang fleksibel untuk menggerakkan karakter dalam berbagai arah dan melakukan berbagai tindakan dalam permainan. Dengan menggunakan tombol-tombol khusus, pemain dapat menggerakkan karakter ke depan, ke belakang, ke samping, atau melakukan tindakan lain seperti melompat, menembak, atau mengaktifkan kekuatan khusus.

Pengaturan Kustomisasi: Pengguna dapat dengan mudah menyesuaikan pengaturan keyboard sesuai dengan preferensi mereka. Mereka dapat memetakan tombol-tombol sesuai dengan yang mereka sukai untuk memberikan pengalaman bermain yang lebih personal.

Kemampuan Multifungsi: Keyboard input memungkinkan tombol-tombol untuk memiliki fungsi ganda atau bahkan lebih dalam permainan yang sama. Misalnya, tombol "W" dapat digunakan untuk menggerakkan karakter ke depan dalam game petualangan, tetapi dapat berfungsi sebagai tombol akselerasi dalam game balap.

Navigasi Menu yang Mudah: Keyboard juga berguna untuk navigasi antarmuka pengguna (UI) dalam game. Pemain dapat menggunakan tombol panah atau tombol-tombol lainnya untuk memilih menu, memilih opsi, atau berinteraksi dengan elemen-elemen lain dalam UI.

Kompatibilitas Universal: Hampir semua komputer, termasuk PC dan Mac, dilengkapi dengan keyboard standar. Hal ini membuat keyboard input sangat kompatibel dengan berbagai platform game, sehingga memungkinkan pemain dari berbagai latar belakang untuk mengakses dan menikmati game dengan mudah.

Kecepatan Responsif: Keyboard input sering kali memberikan respons yang lebih cepat daripada pengontrol lainnya, seperti mouse atau gamepad. Ini membuatnya ideal untuk game-game yang memerlukan tindakan cepat atau reaksi instan dari pemain.

Secara keseluruhan, keyboard input membawa fleksibilitas, kustomisasi, dan responsifitas yang tinggi dalam pengalaman bermain game, yang membantu dalam menciptakan pengalaman bermain yang mendalam dan menarik bagi pemain.

## Tujuan

Tujuan dari tutorial ini adalah:

-   Pembaca memahami apa itu keyboard input dan dapat menerapkannya pada project pembaca sendiri.

## Prasyarat

Prasyarat dari tutorial ini adalah:

-   Menggunakan Godot Engine 3.
-   Telah mengenal Godot Engine 3 sebelumnya.
-   Memiliki pengalaman coding sebelumnya.

## Langkah-Langkah

Jika Anda telah membaca tutorial cara membuat project Godot Engine 3 dan mempraktekkannya, maka kemungkinan akan ada Node Spatial di sana.

Gunakan Node tersebut. Attach sebuah script bernama "Spatial.gd".

Selanjutnya, isi "Spatial.gd" dengan kode ini:

```
# file: Spatial.gd

# extend dari Spatial
extends Spatial

# pada tiap frame. delta adalah selisih waktu
func _process(delta):
    # apakah tombol w ditekan
    if(Input.is_key_pressed(KEY_W)):
        print("w is pressed")
    # apakah tombol s ditekan
    if(Input.is_key_pressed(KEY_S)):
        print("s is pressed")
    # apakah action jump, yand disetting di project setting ditekan
    if(Input.is_action_pressed("jump")):
        print("jump is pressed")
    # apakah action run, yand disetting di project setting ditekan
    if(Input.is_action_pressed("run")):
        print("run is pressed")
    # apakah action jump, yand disetting di project setting baru saja ditekan
    if(Input.is_action_just_pressed("jump")):
        print("jump just pressed")
    # apakah action jump, yand disetting di project setting baru saja dilepas
    if(Input.is_action_just_released("jump")):
        print("jump just released")
    # apakah action jump dan run, yand disetting di project setting ditekan
    if(Input.is_action_pressed("jump")):
        if(Input.is_action_pressed("run")):
            print("jump while running")
```

Karena kita perlu input action juga, maka bukalah Project Settings > Input Map, kemudian isi untuk "run" dan "jump".

Key untuk kedua action tadi bebas. Boleh key yang manapun.

Kemudian, jalankan scene dan perhatikan console-nya.

Nanti akan ada teks yang isinya tergantung dari keyboard yang ditekan.

## Pembahasan

Pertama, bagian ini memiliki arti bahwa kita membuat class yang di-extend dari Spatial:

```
# extend dari Spatial
extends Spatial
```

Hal itu bisa dipahami karena Node yang di-attach oleh script itu adalah Spatial juga.

Selanjutnya, pada bagian ini, kita menangkap event process yang parameternya adalah delta time atau selisih waktu tiap frame:

```
# pada tiap frame. delta adalah selisih waktu
func _process(delta):
```

Karena kita menggunakan metoda polling, maka tiap frame dicek apa state dari key keyboard kita. Cirinya adalah penggunaan method yang berawalan is di dalam conditional if:

```
    # apakah tombol w ditekan
    if(Input.is_key_pressed(KEY_W)):
        print("w is pressed")
    # apakah tombol s ditekan
    if(Input.is_key_pressed(KEY_S)):
        print("s is pressed")
    # apakah action jump, yand disetting di project setting ditekan
    if(Input.is_action_pressed("jump")):
        print("jump is pressed")
    # apakah action run, yand disetting di project setting ditekan
    if(Input.is_action_pressed("run")):
        print("run is pressed")
    # apakah action jump, yand disetting di project setting baru saja ditekan
    if(Input.is_action_just_pressed("jump")):
        print("jump just pressed")
    # apakah action jump, yand disetting di project setting baru saja dilepas
    if(Input.is_action_just_released("jump")):
        print("jump just released")
    # apakah action jump dan run, yand disetting di project setting ditekan
    if(Input.is_action_pressed("jump")):
        if(Input.is_action_pressed("run")):
            print("jump while running")
```

Adapun perbedaan antara is_key... dengan is_action... terletak pada input dari methodnya.

Pada is_key... parameternya berupa enum dari id key milik keyboard, sedangkan pada is_action... parameternya berupa apa yang tadi Anda tulis di Input Map di Project Settings.

Kecuali Anda hanya membuat aplikasi sederhana, adalah bijak untuk senantiasa menggunakan is_action... yang harus didaftarkan di Input Map.

Itu karena jika ada perubahan pada key yang ingin kita deteksi, kita tidak perlu mengubah kodenya lagi.

## Penutup

Sekarang, Anda seharusnya telah mengenal keyboard input di Godot Engine.

Selanjutnya, silakan praktekkan sendiri apa yang telah dipelajari di sini.
