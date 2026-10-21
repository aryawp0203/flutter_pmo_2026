# 📱 Praktikum Pemrograman Mobile 2026 (PMO)

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web-brightgreen?style=for-the-badge)](https://flutter.dev)

---

## 📌 Pertemuan 6

### **Navigasi Antar Halaman dan Pengiriman Data dengan Navigator**

Repository ini berisi materi dan hasil praktikum mata kuliah Pemrograman Mobile (PMO) Pertemuan 6 yang berfokus pada perpindahan antar layar (routing & navigasi) menggunakan konsep route stack Flutter, pengambilan input dengan `TextEditingController`, serta pertukaran data antar-halaman melalui parameter konstruktor.

---

## 🎯 Capaian Pembelajaran

Setelah menyelesaikan praktikum ini, mahasiswa diharapkan mampu:

1. **Membuat halaman detail** yang dapat menerima data dari halaman lain.
2. **Menggunakan `TextEditingController`** untuk mengambil nilai input dari widget `TextField`.
3. **Melakukan perpindahan halaman** menggunakan `Navigator.push` dan `MaterialPageRoute`.
4. **Mengirimkan data** dari halaman form ke halaman detail melalui parameter konstruktor.
5. **Menerapkan navigasi balik** menggunakan `Navigator.pop(context)` untuk kembali ke halaman sebelumnya.
6. **Meningkatkan estetika tampilan teks** dengan kustomisasi properti `TextStyle` (`fontSize`, `fontWeight`, dan `color`).

---

## 📂 Struktur Proyek

```text
lib/
├── ui/
│   ├── produk_form.dart     # Formulir input data produk & pemicu navigasi kirim data
│   └── produk_detail.dart   # Halaman penerima & penampil detail data produk
└── main.dart                # Entry point aplikasi (MaterialApp dengan home: ProdukForm)
```

---

## 📚 Pembahasan Materi & Implementasi

### 1. Pengambilan Input Data (`TextEditingController`)

Pada [lib/ui/produk_form.dart](lib/ui/produk_form.dart), setiap input teks dikendalikan oleh instansiasi controller masing-masing:

- `_kodeProdukTextboxController` untuk membaca **Kode Produk** (`String`).
- `_namaProdukTextboxController` untuk membaca **Nama Produk** (`String`).
- `_hargaProdukTextboxController` untuk membaca **Harga** dan dikonversi ke integer (`int.parse()`).
- `_stokProdukTextboxController` untuk membaca **Stok** dan dikonversi ke integer (`int.parse()`).

### 2. Navigasi & Pengiriman Data (`Navigator.push`)

Ketika tombol **Simpan** ditekan, aplikasi memicu navigasi menggunakan tumpukan rute (_route stack_):

```dart
Navigator.of(context).push(
  MaterialPageRoute(
    builder: (context) => ProdukDetail(
      kodeProduk: kodeProduk,
      namaProduk: namaProduk,
      harga: harga,
      stok: stok,
    ),
  ),
);
```

### 3. Penerimaan Data pada Halaman Detail ([lib/ui/produk_detail.dart](lib/ui/produk_detail.dart))

Widget `ProdukDetail` menerima argumen melalui konstruktor berparameter opsional:

```dart
class ProdukDetail extends StatefulWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;
  final int? stok;

  const ProdukDetail({super.key, this.kodeProduk, this.namaProduk, this.harga, this.stok});
  // ...
}
```

Nilai yang dikirimkan kemudian diakses pada `_ProdukDetailState` menggunakan sintaks `widget.<namaVariabel>`.

### 4. Navigasi Kembali (`Navigator.pop`)

Tombol **Kembali** disediakan pada halaman detail untuk mengeluarkan rute paling atas dari stack sehingga pengguna kembali ke form:

```dart
ElevatedButton(
  onPressed: () {
    Navigator.pop(context);
  },
  child: const Text('Kembali'),
)
```

### 5. Kustomisasi Tampilan Teks (`TextStyle`)

Informasi pada halaman detail diformat agar rapi dan kontras:

- **Kode Produk**: Ukuran `16.0`, semi tebal (`FontWeight.w500`), warna `Colors.black87`.
- **Nama Produk**: Ukuran `18.0`, cetak tebal (`FontWeight.bold`), warna `Colors.indigo`.
- **Harga**: Ukuran `16.0`, semi tebal (`FontWeight.w600`), warna `Colors.green`.
- **Stok**: Ukuran `16.0`, warna aksen `Colors.deepOrange`.

---

## 🧩 Ringkasan Komponen Navigasi & Form

| Komponen                    | Peran Utama                                                           |
| :-------------------------- | :-------------------------------------------------------------------- |
| **`TextEditingController`** | Mendengarkan dan mengekstrak teks masukan pengguna dari `TextField`.  |
| **`Navigator.push`**        | Menambahkan rute baru ke tumpukan navigasi layar.                     |
| **`MaterialPageRoute`**     | Rute modal yang mengadaptasi transisi halaman platform (Android/iOS). |
| **`Navigator.pop`**         | Menghapus rute aktif saat ini dan kembali ke rute sebelumnya.         |
| **`Constructor Parameter`** | Media passing data antar widget class secara eksplisit dan aman.      |

---

## 🚀 Cara Menjalankan Aplikasi

1. **Unduh dependencies proyek:**

   ```bash
   flutter pub get
   ```

2. **Jalankan aplikasi:**
   ```bash
   flutter run
   ```
