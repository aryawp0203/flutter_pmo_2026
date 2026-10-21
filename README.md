# 📱 Praktikum Pemrograman Mobile 2026 (PMO)

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web-brightgreen?style=for-the-badge)](https://flutter.dev)

---

## 📌 Pertemuan 4
### **Widget Layout Column & Row serta Konsep StatelessWidget & StatefulWidget**

Repository ini berisi materi dan hasil praktikum mata kuliah Pemrograman Mobile (PMO) Pertemuan 4 yang berfokus pada pemahaman tata letak (layout) dasar dan manajemen state di Flutter.

---

## 🎯 Capaian Pembelajaran

Setelah menyelesaikan praktikum ini, mahasiswa diharapkan mampu:
1. **Membuat tata letak vertikal** menggunakan widget `Column`.
2. **Membuat tata letak horizontal** menggunakan widget `Row`.
3. **Mengatur perataan dan penjajaran** elemen menggunakan properti `mainAxisAlignment` dan `crossAxisAlignment`.
4. **Menjelaskan perbedaan** antara `StatelessWidget` dan `StatefulWidget`.
5. **Menentukan penggunaan** `StatelessWidget` atau `StatefulWidget` sesuai kebutuhan antarmuka pengguna.
6. **Mengelola perubahan state interaktif** menggunakan fungsi `setState()`.

---

## 📂 Struktur Proyek

```text
lib/
├── column_widget.dart   # Implementasi layout vertikal (Column)
├── row_widget.dart      # Implementasi layout horizontal (Row)
├── profil_widget.dart   # Gabungan Column & Row dengan alignment untuk Biodata
├── counter.dart         # Contoh interaktif StatefulWidget (Counter & Reset)
└── main.dart            # Titik masuk utama aplikasi (MainApp)
```

---

## 📚 Rangkuman Komponen & Halaman

### 1. `ColumnWidget` (`lib/column_widget.dart`)
* **Jenis**: `StatelessWidget`
* **Fungsi**: Menyusun elemen secara vertikal (atas ke bawah).
* **Fitur**: Memanfaatkan `MainAxisAlignment.center` dan `CrossAxisAlignment.start` untuk menyusun teks kolom.

### 2. `RowWidget` (`lib/row_widget.dart`)
* **Jenis**: `StatelessWidget`
* **Fungsi**: Menyusun elemen secara horizontal (kiri ke kanan).
* **Fitur**: Mengatur deretan teks baris dengan memanfaatkan sumbu horizontal.

### 3. `ProfilWidget` (`lib/profil_widget.dart`)
* **Jenis**: `StatelessWidget`
* **Fungsi**: Menampilkan halaman Biodata Mahasiswa dengan tata letak rapi.
* **Fitur**:
  * Mengombinasikan `Column` (arah vertikal antar-atribut) dan `Row` (arah horizontal untuk Label dan Nilai).
  * Menggunakan `SizedBox` untuk lebar label yang seragam.
  * Menggunakan `Expanded` untuk nilai biodata agar responsif terhadap ukuran layar.
  * Dilengkapi pengaturan `mainAxisAlignment` dan `crossAxisAlignment` pada `Column` maupun setiap `Row`.

### 4. `Counter` (`lib/counter.dart`)
* **Jenis**: `StatefulWidget`
* **Fungsi**: Menampilkan penghitung interaktif dengan perubahan data langsung (dinamis).
* **Fitur**:
  * Menggunakan fungsi `setState()` untuk memperbarui tampilan saat tombol ditekan.
  * Tombol **Tambah** untuk menambah nilai (+1).
  * Tombol **Reset** untuk mengembalikan nilai ke 0.

---

## ⚖️ Perbandingan StatelessWidget vs StatefulWidget

| Aspek | StatelessWidget | StatefulWidget |
| :--- | :--- | :--- |
| **Sifat Data** | Statis / Immutable (tidak dapat diubah) | Dinamis / Mutable (dapat berubah sewaktu-waktu) |
| **Siklus Hidup (Lifecycle)** | Sederhana, hanya metode `build()` | Kompleks (`createState`, `initState`, `setState`, `dispose`, dll.) |
| **Re-render** | Hanya dirender satu kali | Dirender ulang saat `setState()` dipanggil |
| **Contoh Penggunaan** | Menampilkan teks statis, label profil, ikon | Form input, keranjang belanja, counter, animasi |

---

## 🚀 Cara Menjalankan Proyek

1. **Pastikan Flutter SDK sudah terpasang:**
   ```bash
   flutter --version
   ```

2. **Clone repositori dan masuk ke direktori proyek:**
   ```bash
   cd flutter_pmo_2026
   ```

3. **Unduh dependencies:**
   ```bash
   flutter pub get
   ```

4. **Jalankan aplikasi:**
   ```bash
   flutter run
   ```

> [!TIP]
> Untuk mengganti halaman yang ditampilkan saat aplikasi pertama kali dijalankan, ubah properti `home` pada widget `MaterialApp` di file [lib/main.dart](lib/main.dart) (misalnya: `home: const ProfilWidget()` atau `home: const Counter()`).

