# Flystep
A Simple Online Shopping App built with Flutter to fulfill PBP's Assignment Requirements.

---

# Jawaban Tugas

## Tugas 7

<details>
<summary>Jawaban tugas 7</summary>


### 1. Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget. 
Widget tree adalah struktur yang menggambarkan hubungan antar widget dalam aplikasi Flutter. Setiap widget dapat memiliki widget lain sebagai anak, dan hubungan ini membentuk sebuah pohon dari widget. 

Parent dapat mengatur dan mengelola child melalui properti dan metode yang disediakan oleh Flutter. Ketika widget parent diperbarui, widget anaknya juga akan diperbarui sesuai dengan perubahan yang terjadi pada parent.


### 2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.
- `MaterialApp`: Widget root yang menyediakan tema dan navigasi dasar untuk aplikasi.
- `Scaffold`: Menyediakan struktur dasar untuk halaman aplikasi, termasuk app bar, body, dan floating action button.
- `AppBar`: Menampilkan header aplikasi di bagian atas layar.
- `ListView`: Menampilkan daftar item yang dapat discroll secara vertikal.
- `Card`: Menampilkan informasi produk dalam bentuk kartu yang terpisah.
- `Center`: Memusatkan widget anaknya di dalam ruang yang tersedia.
- `Row`: Menyusun widget anaknya secara horizontal.
- `Column`: Menyusun widget anaknya secara vertikal.
- `Padding`: Memberikan ruang kosong di sekitar widget anaknya.
- `GridView`: Menampilkan item dalam bentuk grid yang dapat discroll.
- `SizedBox`: Memberikan ruang kosong dengan ukuran tertentu.
- `Icon`: Menampilkan ikon.
- `Text`: Menampilkan teks di layar.


### 3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
Widget MaterialApp adalah widget root yang menyediakan berbagai fitur dasar untuk aplikasi Flutter seperti tema, navigasi, dan pengaturan lokal. Widget ini sering digunakan sebagai widget root karena menyediakan preset yang mudah digunakan dan sudah menerapkan prinsip Material Design. Dengan menggunakan MaterialApp, pengelolaan navigasi antar halaman, pengaturan tema aplikasi, dan akses ke berbagai fitur yang diperlukan untuk membangun aplikasi menjadi lebih mudah.


### 4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
StatelessWidget adalah widget yang tidak memiliki state sehingga merupakan widget statik, dengan kata lain, widget ini hanya bergantung pada data yang diberikan saat inisialisasi, dan tidak dapat berubah. Di sisi lain, StatefulWidget adalah widget yang memiliki state yang dapat berubah, dan perubahan ini dapat memperbarui tampilan widget. Stateless widget dipilih ketika tampilan widget tidak perlu berubah setelah dibuat, sedangkan StatefulWidget dipilih ketika tampilan widget perlu diperbarui berdasarkan interaksi pengguna atau perubahan data.


### 5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
BuildContext memberikan informasi tentang lokasi widget dalam widget tree. Ini penting karena memungkinkan widget untuk mengakses data dan properti dari widget parent atau ancestor-nya. Dalam metode build, BuildContext digunakan untuk mendapatkan informasi tentang widget lain dan untuk mengakses tema, media query, dan navigasi.

### 6. Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
Hot reload memungkinkan untuk melihat perubahan kode secara instan tanpa kehilangan state aplikasi. Ketika hot reload dilakukan, hanya bagian kode yang diubah yang diperbarui, sehingga aplikasi tetap berjalan dengan state yang sama. Di lain sisi, hot restart memulai ulang seluruh aplikasi dari awal, sehingga semua state aplikasi direset. Hot restart digunakan ketika perubahan kode mempengaruhi state aplikasi atau ketika ada perubahan besar yang tidak dapat diterapkan melalui hot reload.

</details>


## Tugas 8

<details>
<summary>Jawaban tugas 7</summary>
### 1. Perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter
- Navigator.push() digunakan untuk menambahkan halaman baru ke tumpukan navigasi tanpa menghapus halaman sebelumnya. Berguna ketika kita ingin memungkinkan pengguna untuk kembali ke halaman sebelumnya menggunakan tombol back. Sebagai contoh, ketika pengguna menavigasi dari halaman utama ke halaman detail produk, kita dapat menggunakan Navigator.push() sehingga mereka dapat kembali ke halaman utama setelah melihat detail produk.
- Navigator.pushReplacement() digunakan untuk menggantikan halaman saat ini dengan halaman baru, menghapus halaman sebelumnya dari tumpukan navigasi. Ini berguna ketika kita tidak ingin pengguna kembali ke halaman sebelumnya, seperti setelah proses login berhasil atau setelah menyelesaikan formulir pembelian.

### 2. Memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer
Scaffold digunakan sebagai kerangka dasar untuk setiap halaman dalam aplikasi, menyediakan struktur yang konsisten dengan area untuk AppBar di bagian atas, body di tengah, dan Drawer di sisi kiri. AppBar memberikan judul dan navigasi utama untuk halaman, sementara Drawer menyediakan menu navigasi samping yang dapat diakses dari mana saja dalam aplikasi.

### 3. Kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView
Padding digunakan untuk memberikan ruang kosong di sekitar elemen form, sehingga elemen-elemen tersebut tidak terlalu berdekatan dan lebih mudah dibaca serta diinteraksi oleh pengguna. Misalnya, pada formulir tambah produk, kita dapat menggunakan Padding untuk memberikan jarak antara label dan input field. 
SingleChildScrollView memungkinkan konten form yang panjang untuk discroll, sehingga pengguna dapat mengakses semua elemen form tanpa terpotong oleh batas layar. 
ListView juga dapat digunakan untuk menampilkan daftar elemen form yang dinamis dengan performa yang baik.

### 4. Menyesuaikan warna tema agar aplikasi memiliki identitas visual yang konsisten dengan brand
Untuk menyesuaikan warna tema aplikasi Football Shop, kita dapat menggunakan ThemeData di widget MaterialApp. Kita bisa menentukan primaryColor, accentColor, dan warna lainnya yang sesuai dengan identitas visual brand dalam main.dart.

</details>
