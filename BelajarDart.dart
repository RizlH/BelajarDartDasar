void main() {
  // 2.1 Nyoba deklarasi tipe data dasar
  String namaBengkel = 'Wijaya Motor';
  int noKantor = 021123456;
  double harga = 200000.0;
  bool bukaGk = true;
  // Nilai dapat diubah
  // harga = 250000.0;
  // harga = 'dua ratus lima puluh ribu'; // Error! Tipe data tidak boleh berubah.

  print('$namaBengkel');
  print('$noKantor');
  print('$harga');
  print('$bukaGk');

  // 2.2. Sound Null Safety
  // Non-Nullable (Bawaan Default):
  String namaPemilik = 'Budi'; // Variabel ini gk bisa bernilai null
  print('Nama Pemilik: $namaPemilik');

  //Nullable (?): Kasih tanda tanya klo suatu data emang diizinin kosong/belum tersedia:
  String? keluhan; // Boleh berisi String atau null
  keluhan = 'Mesin panas'; //
  keluhan = null; // Sah
  print('Keluhan: $keluhan');

  //Null-Aware Operator (??): Alternatif jika data bernilai null:
  String? catatan;
  print('Catatan: ${catatan ?? 'Tidak ada catatan'}');

  //2.3. Final dengan Tipe Eksplisit (Single Assignment / Runtime Constant)
  final String merkMobil = 'Mitsubishi Lancer'; // Tipe data eksplisit
  final DateTime WaktuDatang = DateTime.now();
  // Menuliskan tipe data setelah 'final' bersifat opsional tapi sangat disarankan:
  // final transactionId = 'TRX-9901'; // Valid, tapi implisit
  print('Merk Mobil: $merkMobil');
  print('Waktu Datang: $WaktuDatang');

  //2.4. Const dengan Tipe Eksplisit (Compile-Time Constant) Nilai ini bersifat absolut dan tidak
  // dapat diubah sama sekali, bahkan saat runtime.
  const double diskon = 0.1; // Tipe data eksplisit
  const String bayar = 'Cash';
  print('Diskon: $diskon');
  print('Metode Pembayaran: $bayar');

  //2.5. late Modifier (Inisialisasi Tertunda) Gunakan jika tipe data non-nullable, tetapi nilainya baru bisa ditentukan setelah deklarasi (sebelum pertama kali dibaca).
  late DateTime masukMobil;
  void buatCatatan() {
    masukMobil = DateTime.now(); // Inisialisasi
    print(
      'Waktu Masuk Mobil (dari fungsi buatCatatan): $masukMobil',
    ); // Aman dibaca setelah diinisialisasi
  }

  buatCatatan(); // Wajib dipanggil dulu supaya 'masukMobil' terinisialisasi
  print('Waktu Masuk Mobil: $masukMobil'); // Aman! Sudah diinisialisasi

  //2.6. Daftar Type Data selain String, int, double, bool dan num (karena num adalah tipe data dasar yang menyimpan nilai integer dan double).
  //2.6.6. List — kumpulan data berurutan
  List<String> namaMobil = ['Lancer', 'Pajero', 'Fortuner'];
  print(namaMobil[0]); // Lancer
  print(namaMobil[1]); // Pajero
  /*Indeks List dimulai dari 0. Contoh dalam fluutter:
   List<String> namaMobil2 = [
   'Lancer',
   'Pajero',
   'Fortuner',
   ];

   ListView.builder(
     itemCount: namaMobil2.length,
     itemBuilder: (context, index) {
       return ListTile(
         title: Text(namaMobil2[index]),
       );
      },
    );
  */

  //2.6.7. Set — kumpulan data unik (tidak ada duplikasi)
  Set<String> namaMerkMobil = {'BMW', 'Toyota', 'Mitsubishi'};
  print(namaMerkMobil); // {BMW, Toyota, Mitsubishi}

  Set<String> pilihanMerkMobil = {};
  pilihanMerkMobil.add('BMW');
  pilihanMerkMobil.add('Toyota');
  pilihanMerkMobil.add('Mitsubishi');
  print(pilihanMerkMobil); // {BMW, Toyota, Mitsubishi}

  //2.6.8. Map — kumpulan data berpasangan (key-value)
  Map<String, String> dataMobil = {
    'merk': 'Mitsubishi',
    'tipe': 'Lancer',
    'warna': 'Merah',
  };
  print(dataMobil['merk']); // Mitsubishi
  print(dataMobil['tipe']); // Lancer
  print(dataMobil['warna']); // Merah

  //Contoh data dari JSON / API:
  Map<String, dynamic> dataJson = {
    'namaMobil': 'Lancer',
    'tahunProduksi': 1993,
    'alamatSTNK': {
      'jalan': 'Jl. Jatinegara Timur No. 10',
      'kota': 'Jakarta',
      'kodePos': 12345,
    },
  };

  print(dataJson['namaMobil']); // Lancer
  print(dataJson['tahunProduksi']); // 1993

  //2.6.9 Object — induk dari hampir semua objek Dart
  Object kunciShock = '16mm';
  kunciShock = 16; // Bisa diubah ke tipe data lain
  kunciShock = true; // Bisa diubah ke tipe data lain
  //Namun, sebelum menggunakan operasi khusus, tipenya perlu diperiksa:
  if (kunciShock is String) {
    print(kunciShock.toUpperCase()); // 16MM
  }
  ;

  //2.6.10. dynamic — tipe data yang bisa berubah-ubah
  dynamic kunciRing = '14mm';
  kunciRing = 14; // Bisa diubah ke tipe data lain
  kunciRing = true; // Bisa diubah ke tipe data lain
  print(kunciRing); // true
  //Contoh:
  dynamic data = 'Ini String';
  print(data.toUpperCase()); // INI STRING
  //Masalahnya, kode berikut dapat lolos dari pemeriksaan awal tetapi gagal saat dijalankan:
  //dynamic data2 = 123;
  // print(data2.toUpperCase()); // Akan menyebabkan error karena angka tidak memiliki metode toUpperCase().
  /*
  Gunakan dynamic secara terbatas, biasanya saat:
  1. Tipe data tidak diketahui atau bisa berubah-ubah.
  2. Berinterkasi dengan library atau API yang tidak memiliki tipe data yang jelas.
  3. Membaca JSON.
  */
}
