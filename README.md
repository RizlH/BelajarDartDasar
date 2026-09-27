

## Ringkasan:

1. **Tipe Data Dasar**
   Eksperimen deklarasi standar seperti `String` (teks), `int` (angka bulat), `double` (angka desimal), dan `bool` (benar/salah).

2. **Sound Null Safety (? dan ??)**
   Fitur Dart agar aplikasi tidak mudah *crash*. Catetan ini mencakup cara membuat variabel yang *strict* tidak boleh kosong, dan cara mengizinkan variabel bernilai kosong (null) menggunakan tanda `?`. Terdapat juga penggunaan *Null-Aware Operator* `??` sebagai nilai *default*.

3. **Late Modifier**
   Penanda bahwa sebuah data belum ada nilainya sekarang, tetapi pasti akan diinisialisasi sebelum digunakan. Tujuannya agar tidak terkena error dari aturan *null safety*.

4. **Koleksi Data (List, Set, Map)**
   * **List**: Menyimpan banyak data secara berurutan (dipanggil menggunakan indeks yang dimulai dari 0).
   * **Set**: Mirip List, tetapi sifatnya *anti-duplikat*. Data kembar hanya akan dihitung satu.
   * **Map**: Menyimpan data dengan model pasangan *key-value*. Strukturnya sangat mirip dengan JSON, berguna untuk pengolahan API.

5. **Object & Dynamic**
   Keduanya bisa menampung tipe data apa saja, namun memiliki perbedaan mendasar:
   * `Object`: Lebih aman. Jika ingin digunakan untuk operasi spesifik, tipenya harus dicek terlebih dahulu (misal pakai `is String`).
   * `dynamic`: Bebas mengubah tipe data, tapi rawan error karena tidak dideteksi saat menulis kode, melainkan saat program dijalankan. Sebaiknya digunakan seperlunya saja (seperti saat membaca respons JSON).