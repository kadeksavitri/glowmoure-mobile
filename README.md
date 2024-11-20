Nama : Kadek Savitri
NPM : 2306203236
Kelas : PBP A

Tugas 7 =================

1. Apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Jawab: 
- Stateless Widget: Widget tanpa kondisi atau state internal yang berubah (widget statis/ widget tidak berubah). Tampilan widget tetap sama dan tidak ada interaksi yang mengubah data internal widget ini.
- Stateful Widget: Widget yang memiliki kondisi atau state internal yang bisa berubah-ubah. Widget ini dapat merubah tampilannya sesuai dengan response dari events yang dipicu baik dari interaksi user maupun variabel atau nilai baru yang didapat, statefull merespons perubahan data internalnya dan memperbarui tampilannya sesuai dengan perubahan tersebut.


2. Widget apa saja yang digunakan pada proyek ini dan jelaskan fungsinya.
Jawab: 
Scaffold: Menyediakan struktur dasar halaman seperti AppBar dan body.
AppBar: Menampilkan bar judul di bagian atas aplikasi.
ElevatedButton: Tombol yang bisa diklik dan bisa disesuaikan dengan warna dan ikon.
Icon: Digunakan untuk menampilkan ikon pada tombol atau teks.
SnackBar: Menampilkan pesan pop-up sementara di bagian bawah layar untuk notifikasi.
ScaffoldMessenger: Mengatur tampilan dan pengaturan SnackBar.

3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Jawab: 
setState() berfungsi untuk memperbarui tampilan widget pada Stateful Widget saat ada perubahan data atau kondisi. Variabel-variabel yang dideklarasikan dalam State akan terdampak oleh setState() jika nilainya diubah, menyebabkan tampilan widget diperbarui sesuai dengan nilai terbaru dari variabel-variabel tersebut.

4. Jelaskan perbedaan antara const dengan final.
Jawab: 
const: Digunakan untuk nilai yang sudah diketahui pada saat kompilasi dan tetap konstan sepanjang waktu. Objek const bersifat immutable.
final: Digunakan untuk nilai yang hanya bisa diinisialisasi sekali (saat runtime). Setelah diberi nilai, nilai tersebut tidak dapat diubah, tetapi nilai awalnya bisa ditentukan saat aplikasi berjalan.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
Jawab: 
- Pertama, membuat proyek Flutter baru dengan nama glowmoure. Serta membuat file menu.dart untuk mengimplementasi fungsi aplikasi. dan memindahkan MyHomePade serta class _MyHomePageState ke file menu.dart lalu mengimport filenya ke main.dart
- menambahkan warna pada main.dart menggunakan colorSheme. 
- Membuat button card, tiga tombol (Lihat Daftar Produk, Tambah Produk, dan Logout) pada menu.dart.
- Menambahkan aksi untuk masing-masing tombol agar memunculkan Snackbar dengan pesan tertentu saat ditekan.
- Membuat tombol-tombol dengan warna yang berbeda untuk setiap fungsinya dengan menambahkan variabel baru pada class ItemHomepage lalu mengubah color pada widget itemCard menjadi color: item.color

Tugas 8 =================

1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
Jawab: 
const digunakan untuk mendefinsikan nilai konstan pada waktu kompilasi, yaitu ketika widget dan variabel yang tidak berubah. 

Keuntungan menggunakan const, yaitu:  1. efisiensi memori karena widget dibuat seali saja dan tidak diinisialisasi berulang kali setiap UI diperbarui. 
2. const mempercepat proses rendering karena flutter dapat mengakses widget const yang tidak perlu diperbarui.

const sebaiknya digunakan pada widget atauvariabel yang nilainya tidak akan berubah selama aplikasi berlangsung. Biasanya berua widget statis seperti Text, Icon, dan layout sederhana seperti (Container, Row, Column) yang tidak bergantung pada state variabel. 
const tidak digunakan pada widget yang membutuhkan perubahan berdasarkan state, seperti memuat data dari variabel dinamis atau widget yang berubah akibat interaksi dari pengguna. 

2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Jawab:

Column : merupakan layout widget yang elemen anaknya nya disusun secara vertikal untuk menempatkan elemen satu diatas elemen lain. 

Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Title', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    SizedBox(height: 10),
    Text('Description of the item goes here.'),
  ],
)


Row: layout widget yang menyusun elemen anaknya secara horizontal, disusun secara sejajar (dari kiri ke kanan)  

Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Icon(Icons.star, color: Colors.yellow),
    Text('4.5'),
  ],
)

3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Jawab:
Elemen Input yang Digunakan:
- TextFormField untuk memasukkan teks product, description, price, category, stock.
- ElevatedButton untuk menyimpan data setelah validasi form.

Elemen Input Lainnya di Flutter (yang tidak sasya digunakan pada tugas ini):

- Checkbox: Elemen input yang memungkinkan pengguna memilih atau menghapus centang pada opsi.
- Radio: Digunakan untuk memilih satu dari beberapa opsi.
- Switch: Elemen input untuk menyalakan atau mematikan sesuatu (binary choice).
- Slider: Untuk memilih nilai dari rentang nilai (contoh: volume, intensitas).
- DatePicker dan TimePicker: Untuk memilih tanggal atau waktu.
- DropdownButton: Untuk memilih satu opsi dari daftar dropdown.

4.  Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Jawab: 
Saya mengatur tema global di MaterialApp melalui properti theme dan darkTheme. ThemeData digunakan untuk mendefinisikan warna dasar, skema warna, gaya teks, dan sebagainya. 
Saya meimplementasi tema pada aplikasi dengan penggunaan Theme.of(context) untuk mengatur kekonsistesian tema terutama pada AppBar, Drawer, dan button yang digunakan.

5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Jawab: 
Saya menangani navigasi yang banyak halaman menggunakan Navigator dengan push, pop, dan pushReplacement yang digunakan untuk perpindahan halaman dan menangani perubahan state. Drawer (menyediakan navigasi dari samping) dan Bottom Navigation untuk berpindah halaman utama tanpa menumpuk halaman di atas stack. 

Tugas 9 =================

1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Jawab: 
Mapping Data JSON ke Objek Dart: Model mempermudah konversi antara JSON dan objek Dart, sehingga pengelolaan data lebih aman dan terstruktur.
Validasi dan Pemrosesan Data: Model memastikan data sesuai dengan format yang diharapkan. Jika kita langsung mengelola JSON tanpa model, kemungkinan terjadi kesalahan format data meningkat.
Keterbacaan Kode: Dengan model, kode lebih mudah dibaca karena memiliki representasi yang jelas dari data yang digunakan.
Jika tidak membuat model, kita masih bisa mengolah JSON menggunakan map atau list. Namun, kode menjadi lebih rawan kesalahan dan sulit dipahami.

2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini.
Jawab: 

GET: Mengambil data dari server.
POST: Mengirim data ke server.
PUT/DELETE: Memperbarui atau menghapus data di server.
Dalam tugas ini, http digunakan untuk berinteraksi dengan API Django, baik untuk mendapatkan data (fetch) maupun mengirim data (authentikasi atau pembuatan entri).



3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
Jawab: 
CookieRequest digunakan untuk mengelola cookie dalam permintaan HTTP di aplikasi Flutter untuk menangani autentikasi berbasis cookie dengan Django. 
Fungsi utama dari CookieRequest adalah untuk mengelola, menyimpan, meminta dan mengirim cookie untuk otentikasi, pengaturan sesi, dan menyimpan preferensi pengguna. CookieRequest juga mengirim permintaan HTTP (GET/POST) dengan cookie untuk memastikan pengguna tetap terautentikasi.

Instance Cookie Request perlu dibagikan ke semua komponen aplikasi melalui Provider agar semua widget dalam tree aplikasi dapat mengakses informasi login dan sesi pengguna dengan mudah tanpa harus membuat ulang object CookieRequest di setiap tempat (mempertahankan sesi pengguna saat penggua berpindah antar komponen atau halaman) serta memastikan cookie yang digunakan konsisten dan mempermudah pengelolaan cookie dengan terpusat. 

4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Mekanisme Pengiriman data: 
- Input data di Flutter
  Pengguna mengisi form yang disediakan di aplikasi Flutter yang dimana input data ini dikumpulkan melalui widget seperti TextField. 
- Pengiriman Data ke Django
  Data yang telah diinputkan akan dikirim ke API Django melalui metode POST menggunkan CookieRequest atau http.
- Pengelolaan data di django
  Djago menerima data yang telah dikirimlakn kemudian memprosesnya sesuai logika backend, seperti menyimpannya ke database atau memberikan respons tertentu. 
- Pengambilan Data di django
  Flutter meminta data dari Django menggunakan metode GET dan django mengembalikan data dalam format JSON.
- Menampilkan data
  data yang telah diubah ke model ditampilkan di palikasi Fultter menggunakan eidget seperti ListView atau FutureBuilder.
 
5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Jawab: 
1) Login
    - Flutter mengirimkan username dan password ke endpoint Django menggunakan CookieRequest.login().
    - Django memverifikasi kredensial, membuat sesi pengguna, dan mnegirimkan cookie autentikasi.
    - Cookie disimpan oleh CookieRequest untuk digunakan dalam permintaan selanjutnya. 
2) Register
    - Flutter mengirimkan data pengguna seperti username, password dan data lainnya ke endpoint Django menggunakan CookieRequest.register().
    - Django memvalidasi data (misalnya, memastikan password cocok), membuat akun baru, dan mengembalikan respons. 
3) Logout
    - Flutter memanggil endpoint logout Django menggunakan CookieRequest.logout().
    - Django menghapus sesi pengguna dan mengembalikan respons yang mnegindikasikan bahwa logout berhasil. 
4) Menu tampil
    Setelah login berhasil, menu utama ditampilkan menggunakan status login yang disimpan di CookieRequest.

6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
1. Model:
Membuat model data sesuai struktur JSON yang diambil dari Django (menggunakan Quicktype atau manual).
2. Integrasi HTTP:
Menambahkan library http di Flutter.
Membuat fungsi untuk mengirim dan mengambil data menggunakan metode GET dan POST.
3. State Management dengan Provider:
Menambahkan CookieRequest ke Provider untuk berbagi state autentikasi.
Mengonfigurasi Provider di root widget Flutter.
Login:
4. Membuat form login.
Mengirim data ke Django dan memproses respons untuk menentukan status login.
Register:
5. Membuat form register.
Mengirim data ke Django untuk membuat akun baru.
6. Logout:
Menambahkan logika untuk menghapus sesi dengan Django.
Menyediakan menu logout di Flutter.
7. Fetch Data:
Membuat fungsi untuk mengambil data dari API Django.
Menampilkan data di Flutter menggunakan FutureBuilder dan widget lainnya.
8. Testing:
Menguji setiap fungsi (login, register, fetch data, logout) pada emulator dan browser.
