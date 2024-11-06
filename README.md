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
