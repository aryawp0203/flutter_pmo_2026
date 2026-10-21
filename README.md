# 📱 Praktikum Pemrograman Mobile 2026 (PMO)

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web-brightgreen?style=for-the-badge)](https://flutter.dev)

---

## 📌 Pertemuan 7

### **Menampilkan Data dengan ListView, Card, dan Pemisahan Widget ke Dalam Class**

Repository ini berisi materi dan hasil praktikum mata kuliah Pemrograman Mobile (PMO) Pertemuan 7. Praktikum ini berfokus pada penyajian daftar data menggunakan widget `ListView`, pengelompokan visual menggunakan `Card` dan `ListTile`, modularitas kode melalui pemisahan widget ke dalam class `StatelessWidget` (`ItemProduk`), interaktivitas navigasi ke halaman detail produk, serta implementasi daftar dinamis menggunakan `ListView.builder` dengan sumber data `List of Map`.

---

## 🎯 Capaian Pembelajaran

Setelah menyelesaikan praktikum ini, mahasiswa diharapkan mampu:

1. **Menampilkan daftar data** menggunakan widget `ListView`, `Card`, dan `ListTile`.
2. **Menambahkan tombol aksi pada AppBar** menggunakan widget `GestureDetector` dan `Icon`.
3. **Menerapkan modularitas kode** dengan memisahkan widget item ke dalam class `StatelessWidget` tersendiri.
4. **Membuka halaman detail produk** ketika salah satu item pada daftar disentuh menggunakan navigasi `Navigator.push`.
5. **Mengimplementasikan `ListView.builder`** untuk rendering data produk secara dinamis dan efisien berbasis `List<Map<String, dynamic>>`.
6. **Menyesuaikan tata letak komponen `ListTile`** dengan memanfaatkan properti `leading`, `title`, dan `subtitle`.

---

## 📂 Struktur Proyek

```text
lib/
├── ui/
│   ├── produk_page.dart     # Halaman utama daftar produk (ListView.builder & ItemProduk)
│   ├── produk_form.dart     # Formulir input penambahan data produk
│   └── produk_detail.dart   # Halaman penampil detail informasi produk
└── main.dart                # Entry point aplikasi (MaterialApp dengan home: ProdukPage)
```

---

## 📚 Pembahasan Materi & Langkah Implementasi

### 1. Langkah 1 — Menampilkan Data dengan `ListView`, `Card`, dan `ListTile`

Pada [lib/ui/produk_page.dart](lib/ui/produk_page.dart), data disajikan dalam bentuk daftar menggunakan widget `ListView`. Setiap item dibungkus dengan `Card` agar memiliki elevasi dan batas visual yang jelas, serta `ListTile` untuk memformat judul (`title`) dan keterangan (`subtitle`).

### 2. Langkah 2 — Menambahkan Aksi Tambah pada AppBar

Pada properti `actions` di dalam `AppBar`, ditambahkan widget `GestureDetector` dengan ikon `Icons.add` untuk berpindah ke halaman formulir produk (`ProdukForm`):

```dart
appBar: AppBar(
  title: const Text('Data Produk'),
  actions: [
    GestureDetector(
      child: const Icon(Icons.add),
      onTap: () async {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProdukForm()),
        );
      },
    ),
  ],
),
```

### 3. Langkah 3 — Pemisahan Widget ke Dalam Class `StatelessWidget`

Untuk meningkatkan keterbacaan (*clean code*) dan kemudahan *reusable component*, widget item dipisahkan ke dalam class `ItemProduk` yang menerima parameter melalui konstruktor:

```dart
class ItemProduk extends StatelessWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  const ItemProduk({super.key, this.kodeProduk, this.namaProduk, this.harga});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          leading: Text(kodeProduk.toString()),
          title: Text(namaProduk.toString()),
          subtitle: Text(harga.toString()),
        ),
      ),
      onTap: () {
        // Navigasi ke detail produk
      },
    );
  }
}
```

### 4. Langkah 4 — Membuka Halaman Detail saat Item Disentuh

Widget `Card` dibungkus dengan `GestureDetector` pada method `build` di class `ItemProduk`. Ketika item di-tap (`onTap`), aplikasi melakukan navigasi ke `ProdukDetail` sembari mengirimkan parameter `kodeProduk`, `namaProduk`, dan `harga`.

```dart
onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ProdukDetail(
        kodeProduk: kodeProduk,
        namaProduk: namaProduk,
        harga: harga,
      ),
    ),
  );
}
```

---

## 🛠️ Tugas & Pengembangan Tambahan

### 1. Penambahan Data Produk Baru
Daftar produk diperluas dengan menambahkan item baru (seperti produk AC dan Microwave) sehingga variasi data yang ditampilkan lebih lengkap.

### 2. Menampilkan Kode Produk pada `leading` di `ListTile`
Properti `leading` pada `ListTile` dimanfaatkan untuk menampilkan atribut kode produk secara rapi di sisi kiri kartu:
- **`leading`**: Menampilkan kode produk (contoh: `A001`).
- **`title`**: Menampilkan nama produk (contoh: `Kulkas`).
- **`subtitle`**: Menampilkan harga produk (contoh: `2500000`).

### 3. Implementasi Dinamis dengan `ListView.builder` dan `List of Map`
Daftar produk yang sebelumnya bersifat statis diubah menjadi dinamis menggunakan `ListView.builder` dengan data sumber berbasis `List<Map<String, dynamic>>`:

```dart
final List<Map<String, dynamic>> listProduk = [
  {'kodeProduk': 'A001', 'namaProduk': 'Kulkas', 'harga': 2500000},
  {'kodeProduk': 'A002', 'namaProduk': 'Mesin Cuci', 'harga': 2000000},
  {'kodeProduk': 'A003', 'namaProduk': 'TV', 'harga': 3000000},
  {'kodeProduk': 'A004', 'namaProduk': 'AC', 'harga': 3500000},
  {'kodeProduk': 'A005', 'namaProduk': 'Microwave', 'harga': 1500000},
];

// ...

body: ListView.builder(
  itemCount: listProduk.length,
  itemBuilder: (context, index) {
    return ItemProduk(
      kodeProduk: listProduk[index]['kodeProduk'],
      namaProduk: listProduk[index]['namaProduk'],
      harga: listProduk[index]['harga'],
    );
  },
),
```

Keunggulan penggunaan `ListView.builder`:
- **Efisiensi Memori (Lazy Loading)**: Item hanya dirender saat masuk ke viewport layar.
- **Fleksibilitas Data**: Mudah diintegrasikan dengan sumber data eksternal seperti REST API atau database lokal.

---

## 🧩 Ringkasan Komponen Widget

| Komponen / Widget | Peran dan Kegunaan |
| :--- | :--- |
| **`ListView.builder`** | Merender daftar item secara dinamis dan efisien sesuai ukuran list data. |
| **`Card`** | Memberikan efek visual kartu dengan bayangan (*elevation*) dan sudut melengkung. |
| **`ListTile`** | Menyusun informasi berulang dengan struktur baku (`leading`, `title`, `subtitle`). |
| **`GestureDetector`** | Mendeteksi interaksi sentuhan (*tap*) pada widget yang tidak memiliki event klik bawaan. |
| **`ItemProduk`** | Custom `StatelessWidget` untuk memisahkan logika tampilan kartu produk agar modular. |
| **`Navigator.push`** | Berpindah ke halaman baru (`ProdukForm` atau `ProdukDetail`) menggunakan route stack. |

---

## 🚀 Cara Menjalankan Aplikasi

1. **Pastikan Flutter SDK terpasang:**
   ```bash
   flutter doctor
   ```

2. **Unduh dependencies proyek:**
   ```bash
   flutter pub get
   ```

3. **Jalankan aplikasi:**
   ```bash
   flutter run
   ```

1. **Menampilkan daftar data** menggunakan widget `ListView`, `Card`, dan `ListTile`.
2. **Menambahkan tombol aksi pada AppBar** menggunakan widget `GestureDetector` dan `Icon`.
3. **Menerapkan modularitas kode** dengan memisahkan widget item ke dalam class `StatelessWidget` tersendiri.
4. **Membuka halaman detail produk** ketika salah satu item pada daftar disentuh menggunakan navigasi `Navigator.push`.
5. **Mengimplementasikan `ListView.builder`** untuk rendering data produk secara dinamis dan efisien berbasis `List<Map<String, dynamic>>`.
6. **Menyesuaikan tata letak komponen `ListTile`** dengan memanfaatkan properti `leading`, `title`, dan `subtitle`.

---

## 📂 Struktur Proyek

```text
lib/
├── ui/
│   ├── produk_page.dart     # Halaman utama daftar produk (ListView.builder & ItemProduk)
│   ├── produk_form.dart     # Formulir input penambahan data produk
│   └── produk_detail.dart   # Halaman penampil detail informasi produk
└── main.dart                # Entry point aplikasi (MaterialApp dengan home: ProdukPage)
```

---

## 📚 Pembahasan Materi & Langkah Implementasi

### 1. Langkah 1 — Menampilkan Data dengan `ListView`, `Card`, dan `ListTile`

Pada [lib/ui/produk_page.dart](lib/ui/produk_page.dart), data disajikan dalam bentuk daftar menggunakan widget `ListView`. Setiap item dibungkus dengan `Card` agar memiliki elevasi dan batas visual yang jelas, serta `ListTile` untuk memformat judul (`title`) dan keterangan (`subtitle`).

### 2. Langkah 2 — Menambahkan Aksi Tambah pada AppBar

Pada properti `actions` di dalam `AppBar`, ditambahkan widget `GestureDetector` dengan ikon `Icons.add` untuk berpindah ke halaman formulir produk (`ProdukForm`):

```dart
appBar: AppBar(
  title: const Text('Data Produk'),
  actions: [
    GestureDetector(
      child: const Icon(Icons.add),
      onTap: () async {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProdukForm()),
        );
      },
    ),
  ],
),
```

### 3. Langkah 3 — Pemisahan Widget ke Dalam Class `StatelessWidget`

Untuk meningkatkan keterbacaan (*clean code*) dan kemudahan *reusable component*, widget item dipisahkan ke dalam class `ItemProduk` yang menerima parameter melalui konstruktor:

```dart
class ItemProduk extends StatelessWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  const ItemProduk({super.key, this.kodeProduk, this.namaProduk, this.harga});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          leading: Text(kodeProduk.toString()),
          title: Text(namaProduk.toString()),
          subtitle: Text(harga.toString()),
        ),
      ),
      onTap: () {
        // Navigasi ke detail produk
      },
    );
  }
}
```

### 4. Langkah 4 — Membuka Halaman Detail saat Item Disentuh

Widget `Card` dibungkus dengan `GestureDetector` pada method `build` di class `ItemProduk`. Ketika item di-tap (`onTap`), aplikasi melakukan navigasi ke `ProdukDetail` sembari mengirimkan parameter `kodeProduk`, `namaProduk`, dan `harga`.

```dart
onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ProdukDetail(
        kodeProduk: kodeProduk,
        namaProduk: namaProduk,
        harga: harga,
      ),
    ),
  );
}
```

---

## 🛠️ Tugas & Pengembangan Tambahan

### 1. Penambahan Data Produk Baru
Daftar produk diperluas dengan menambahkan item baru (seperti produk AC dan Microwave) sehingga variasi data yang ditampilkan lebih lengkap.

### 2. Menampilkan Kode Produk pada `leading` di `ListTile`
Properti `leading` pada `ListTile` dimanfaatkan untuk menampilkan atribut kode produk secara rapi di sisi kiri kartu:
- **`leading`**: Menampilkan kode produk (contoh: `A001`).
- **`title`**: Menampilkan nama produk (contoh: `Kulkas`).
- **`subtitle`**: Menampilkan harga produk (contoh: `2500000`).

### 3. Implementasi Dinamis dengan `ListView.builder` dan `List of Map`
Daftar produk yang sebelumnya bersifat statis diubah menjadi dinamis menggunakan `ListView.builder` dengan data sumber berbasis `List<Map<String, dynamic>>`:

```dart
final List<Map<String, dynamic>> listProduk = [
  {'kodeProduk': 'A001', 'namaProduk': 'Kulkas', 'harga': 2500000},
  {'kodeProduk': 'A002', 'namaProduk': 'Mesin Cuci', 'harga': 2000000},
  {'kodeProduk': 'A003', 'namaProduk': 'TV', 'harga': 3000000},
  {'kodeProduk': 'A004', 'namaProduk': 'AC', 'harga': 3500000},
  {'kodeProduk': 'A005', 'namaProduk': 'Microwave', 'harga': 1500000},
];

// ...

body: ListView.builder(
  itemCount: listProduk.length,
  itemBuilder: (context, index) {
    return ItemProduk(
      kodeProduk: listProduk[index]['kodeProduk'],
      namaProduk: listProduk[index]['namaProduk'],
      harga: listProduk[index]['harga'],
    );
  },
),
```

Keunggulan penggunaan `ListView.builder`:
- **Efisiensi Memori (Lazy Loading)**: Item hanya dirender saat masuk ke viewport layar.
- **Fleksibilitas Data**: Mudah diintegrasikan dengan sumber data eksternal seperti REST API atau database lokal.

---

## 🧩 Ringkasan Komponen Widget

| Komponen / Widget | Peran dan Kegunaan |
| :--- | :--- |
| **`ListView.builder`** | Merender daftar item secara dinamis dan efisien sesuai ukuran list data. |
| **`Card`** | Memberikan efek visual kartu dengan bayangan (*elevation*) dan sudut melengkung. |
| **`ListTile`** | Menyusun informasi berulang dengan struktur baku (`leading`, `title`, `subtitle`). |
| **`GestureDetector`** | Mendeteksi interaksi sentuhan (*tap*) pada widget yang tidak memiliki event klik bawaan. |
| **`ItemProduk`** | Custom `StatelessWidget` untuk memisahkan logika tampilan kartu produk agar modular. |
| **`Navigator.push`** | Berpindah ke halaman baru (`ProdukForm` atau `ProdukDetail`) menggunakan route stack. |

---

## 🚀 Cara Menjalankan Aplikasi

1. **Pastikan Flutter SDK terpasang:**
   ```bash
   flutter doctor
   ```

2. **Unduh dependencies proyek:**
   ```bash
   flutter pub get
   ```

3. **Jalankan aplikasi:**
   ```bash
   flutter run
   ```

