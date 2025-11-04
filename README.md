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
- `AppBar`: Menampilkan bilah aplikasi di bagian atas layar.
- `ListView`: Menampilkan daftar item yang dapat digulir secara vertikal.
- `Card`: Menampilkan informasi produk dalam bentuk kartu yang terpisah.
- `Center`: Memusatkan widget anaknya di dalam ruang yang tersedia.
- `Row`: Menyusun widget anaknya secara horizontal.
- `Column`: Menyusun widget anaknya secara vertikal.
- `Padding`: Memberikan ruang kosong di sekitar widget anaknya.
- `SizedBox`: Memberikan ruang kosong dengan ukuran tertentu.
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
