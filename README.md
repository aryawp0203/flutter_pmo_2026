# 📱 Praktikum Pemrograman Mobile 2026 (PMO)

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web-brightgreen?style=for-the-badge)](https://flutter.dev)

---

## 📌 Pertemuan 3
### **Struktur Proyek Flutter, Widget Dasar, dan Program Hello World**

Repository ini berisi materi dan hasil praktikum mata kuliah Pemrograman Mobile (PMO) Pertemuan 3 yang berfokus pada pengenalan struktur proyek Flutter, pemahaman hierarki widget dasar, dan pembuatan program antarmuka pertama.

---

## 🎯 Capaian Pembelajaran

Setelah menyelesaikan praktikum ini, mahasiswa diharapkan mampu:
1. **Menjelaskan struktur folder dan berkas** pada proyek Flutter.
2. **Menjelaskan konsep widget** sebagai penyusun antarmuka utama pada Flutter.
3. **Membuat program Hello World** menggunakan widget `MaterialApp`, `Scaffold`, `AppBar`, `Center`, dan `Text`.
4. **Memisahkan halaman ke dalam berkas Dart tersendiri** agar kode lebih modular, mudah dibaca, dan mudah dipelihara.

---

## 📂 Struktur Proyek Flutter

```text
flutter_pmo_2026/
├── android/            # Konfigurasi dan berkas native untuk platform Android
├── ios/                # Konfigurasi dan berkas native untuk platform iOS
├── web/                # Konfigurasi untuk dukungan Flutter Web
├── lib/                # Direktori utama kode sumber Dart
│   ├── main.dart       # Titik masuk utama aplikasi (MaterialApp & root widget)
│   ├── hello_world.dart# Implementasi halaman Hello World (Langkah 1 & 2)
│   └── biodata.dart    # Implementasi halaman biodata (Tugas & Latihan)
├── pubspec.yaml        # Manajemen dependensi, aset, dan konfigurasi proyek
└── README.md           # Dokumentasi laporan praktikum
```

---

## 🧩 Widget Dasar yang Dipelajari

| Widget | Kategori | Fungsi Utama |
| :--- | :--- | :--- |
| **`MaterialApp`** | Root Widget | Membungkus seluruh aplikasi dengan gaya dan tema Material Design. |
| **`Scaffold`** | Layout Struktur | Menyediakan kerangka dasar halaman (AppBar, Body, FloatingActionButton, dll.). |
| **`AppBar`** | Komponen UI | Menampilkan bilah navigasi/judul di bagian atas layar. |
| **`Center`** | Layout Posisi | Memposisikan widget anaknya tepat di tengah area layar yang tersedia. |
| **`Text`** | Komponen UI | Menampilkan teks atau string ke layar pengguna. |

---

## 📚 Rangkuman Halaman & Berkas Dart

### 1. `main.dart`
* **Peran**: Entry point aplikasi (`void main() => runApp(const MainApp())`).
* **Fungsi**: Menginisialisasi `MaterialApp` dan memanggil halaman awal (properti `home`) secara modular dari berkas terpisah.

### 2. `hello_world.dart` (`HelloWorld`)
* **Peran**: Halaman perkenalan Flutter.
* **Fungsi**: Menampilkan teks `"Hello World"` di tengah layar dengan memanfaatkan widget `Scaffold`, `AppBar`, `Center`, dan `Text`.

### 3. `biodata.dart` (`Biodata`)
* **Peran**: Halaman tugas dan latihan mandiri.
* **Fungsi**: Menampilkan informasi biodata mahasiswa secara terpusat pada layar.

---

## 🚀 Cara Menjalankan Aplikasi

1. **Periksa ketersediaan perangkat atau emulator:**
   ```bash
   flutter devices
   ```

2. **Unduh dependencies proyek:**
   ```bash
   flutter pub get
   ```

3. **Jalankan aplikasi:**
   ```bash
   flutter run
   ```

> [!TIP]
> Untuk beralih antara menampilkan halaman `HelloWorld` atau `Biodata`, sesuaikan properti `home` pada `main.dart`:
> ```dart
> home: const HelloWorld(), // Menampilkan Hello World
> // atau
> home: const Biodata(),    // Menampilkan Biodata Mahasiswa
> ```