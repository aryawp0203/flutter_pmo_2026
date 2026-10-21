# 📱 Praktikum Pemrograman Mobile 2026 (PMO)

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web-brightgreen?style=for-the-badge)](https://flutter.dev)

---

## 📌 Pertemuan 5
### **Membuat Form Input dengan TextField dan Pemisahan Widget ke dalam Fungsi**

Repository ini berisi materi dan hasil praktikum mata kuliah Pemrograman Mobile (PMO) Pertemuan 5 yang berfokus pada pembuatan form input interaktif menggunakan `TextField`, teknik refactoring widget ke dalam fungsi/metode tersendiri, serta pengelolaan struktur folder kode yang lebih bersih dan modular.

---

## 🎯 Capaian Pembelajaran

Setelah menyelesaikan praktikum ini, mahasiswa diharapkan mampu:
1. **Membuat halaman form** menggunakan widget `TextField` dan `ElevatedButton`.
2. **Menggunakan widget `SingleChildScrollView`** agar halaman form dapat digulir dan mencegah masalah *bottom overflow* saat keyboard virtual muncul.
3. **Mengelompokkan berkas tampilan** ke dalam folder khusus (`ui/`) untuk menjaga arsitektur kode tetap rapi dan terorganisir.
4. **Memisahkan widget ke dalam method/function** tersendiri agar struktur kode deklaratif mudah dibaca, dipelihara, dan dikembangkan.

---

## 📂 Struktur Proyek

```text
lib/
├── ui/
│   └── produk_form.dart   # Halaman Form Input Data Produk (Modular Widget)
└── main.dart              # Titik masuk utama aplikasi (MaterialApp & Root Widget)
```

---

## 📚 Pembahasan Komponen & Implementasi

### 1. Pengelompokan Folder (`lib/ui/`)
Pemisahan berkas tampilan (antarmuka) ke dalam sub-folder `lib/ui/` bertujuan menerapkan prinsip arsitektur yang terstruktur, membedakan antara antarmuka pengguna (UI), logika bisnis, dan model data.

### 2. Widget Form Input (`lib/ui/produk_form.dart`)
* **`SingleChildScrollView`**: Membungkus form agar konten dapat digulir ketika keyboard virtual tampil di layar perangkat, sehingga terhindar dari *renderflex overflow error*.
* **`TextField`**: Komponen input teks yang dilengkapi beragam kustomisasi `InputDecoration`:
  * **Kode Produk**: Input teks dasar dengan label.
  * **Nama Produk**: Input teks untuk nama item produk.
  * **Harga Produk**: Dikonfigurasi dengan `keyboardType: TextInputType.number`, batas panjang karakter `maxLength: 12`, ikon `prefixIcon`, serta gaya `OutlineInputBorder()`.
  * **Stok**: Input teks angka (`TextInputType.number`) untuk jumlah ketersediaan produk.
  * **Satuan**: Input teks untuk satuan kuantitas barang (misal: Pcs, Box, Kg).
* **`ElevatedButton`**: Tombol aksi untuk memicu aksi simpan data formulir.

### 3. Pemisahan Widget ke dalam Metode (Method Extraction)
Untuk menjaga method `build()` tetap ringkas dan mudah dipahami, komponen-komponen UI dipisahkan menjadi fungsi/metode privat terpisah:
- `_textboxKodeProduk()`: Mengembalikan widget `TextField` kode produk.
- `_textboxNamaProduk()`: Mengembalikan widget `TextField` nama produk.
- `_textboxHargaProduk()`: Mengembalikan widget `TextField` harga produk beserta dekorasi input.
- `_textboxStokProduk()`: Mengembalikan widget `TextField` stok produk dengan input numerik.
- `_textboxSatuanProduk()`: Mengembalikan widget `TextField` satuan produk.
- `_tombolSimpan()`: Mengembalikan widget `ElevatedButton` tombol simpan.

---

## 🧩 Ringkasan Widget & Properti Utama

| Widget / Properti | Fungsi & Penggunaan |
| :--- | :--- |
| **`SingleChildScrollView`** | Membuat child widget (seperti `Column`) dapat digulir vertikal secara dinamis. |
| **`TextField`** | Komponen input yang menerima masukan langsung dari pengguna. |
| **`InputDecoration`** | Mengatur tampilan input (label, hint text, icon, dan border garis luar). |
| **`keyboardType`** | Menentukan jenis keyboard yang muncul (misalnya `TextInputType.number` untuk angka). |
| **`maxLength`** | Membatasi jumlah maksimum karakter yang dapat dimasukkan pengguna. |
| **`ElevatedButton`** | Tombol timbul yang merespons event penekanan (`onPressed`). |

---

## 🚀 Cara Menjalankan Aplikasi

1. **Unduh dependencies proyek:**
   ```bash
   flutter pub get
   ```

2. **Jalankan aplikasi pada perangkat/emulator:**
   ```bash
   flutter run
   ```
