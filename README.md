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



## Tugas 9

<details>
<summary>Jawaban tugas 9</summary>
Questions:
```
Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?
 Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.
 Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
 Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
 Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
 Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
 Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
```

### 1. Pentingnya Model Dart untuk Data JSON dibandingkan dengan Map<String, dynamic>
Membuat model Dart untuk data JSON sangat penting karena memberikan struktur yang jelas dan tipe data yang spesifik untuk setiap atribut. Dengan model, kita dapat memanfaatkan fitur null-safety dan validasi tipe yang disediakan oleh Dart, sehingga mengurangi risiko kesalahan saat mengakses atau memanipulasi data. Jika kita langsung menggunakan Map<String, dynamic>, kita kehilangan keuntungan ini, yang dapat menyebabkan error dan kesulitan dalam maintenance kode karena kurangnya dokumentasi tentang struktur data dan tidak ada type safety.


### 2. Fungsi package http dan CookieRequest serta Perbedaannya
Package http digunakan untuk melakukan permintaan HTTP dasar seperti GET dan POST, sedangkan CookieRequest adalah ekstensi dari package http yang menambahkan dukungan untuk manajemen cookie. CookieRequest memungkinkan aplikasi untuk menyimpan dan mengirim cookie secara otomatis, yang sangat penting untuk autentikasi berbasis sesi. Perbedaannya adalah http hanya menangani permintaan HTTP tanpa manajemen cookie, sedangkan CookieRequest mengelola cookie untuk menjaga sesi pengguna.


### 3. Kenapa Instance CookieRequest perlu dibagikan ke Semua Komponen
Instance CookieRequest perlu dibagikan ke semua komponen di aplikasi Flutter agar setiap bagian aplikasi dapat mengakses sesi autentikasi yang sama. Dengan berbagi instance, kita memastikan bahwa cookie yang menyimpan informasi sesi pengguna tetap konsisten di seluruh aplikasi, memungkinkan pengguna untuk tetap masuk saat menavigasi antar halaman.


### 4. Konfigurasi Konektivitas antara Flutter dan Django
Untuk menghubungkan Flutter dengan Django, kita perlu menambahkan dan mengatur berbagai pengaturan di aplikasi django kita dan juga flutter kita. Jika konfigurasi ini tidak dilakukan dengan benar, Flutter tidak akan dapat berkomunikasi dengan backend Django, yang menyebabkan kegagalan dalam data fetching atau juga pengiriman data.

### 5. Mekanisme Pengiriman Data dari Input hingga Ditampilkan di Flutter
Masukkan diberikan melalui form di Flutter, kemudian masukkan divalidasi secara client side, dan jika lolos validasi, data akan dikirim ke backend. Django memproses data tersebut dan mengirimkan respons kembali ke Flutter. Flutter kemudian menerima respons tersebut dan memperbarui tampilan UI untuk menampilkan data yang baru ditambahkan.

### 6. Mekanisme Autentikasi dari Login, Register hingga Logout
Pengguna memasukkan data akun melalui form di Flutter. Data tersebut dikirim ke Django untuk proses autentikasi. Jika login atau registrasi berhasil, Django mengirimkan cookie sesi kembali ke Flutter melalui CookieRequest. Flutter menyimpan cookie tersebut untuk menjaga sesi pengguna tetap aktif. Saat logout, Flutter mengirim permintaan logout ke Django, yang kemudian menghapus sesi dan menginformasikan Flutter untuk menghapus cookie sesi.

### 7. Implementasi Checklist Step-by-Step
1. Membuat model Dart.
2. Menginstall package http dan pbp_django_auth dan menggunakannya untuk otentikasi.
3. Membuat instance CookieRequest di root aplikasi dan membagikannya ke seluruh komponen.
4. Mengonfigurasi Django dengan menambahkan pengaturan yang diperlukan untuk mendukung komunikasi dengan Flutter, seperti pengaturan CORS dan middleware untuk manajemen sesi.
5. Membuat screen-screen tambahan untuk otentikasi.
6. Membuat widget widget tambahan untuk menampilkan data dari backend.
7. Membuat screen tambahan untuk menampilkan daftar produk.
8. Menghubungkan form input di Flutter dengan backend Django untuk pengiriman data.

</details>
