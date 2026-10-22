import 'package:flutter/material.dart';

class KelolaStokDetail extends StatelessWidget {
  final String? kodeMutasi;
  final String? namaBarang;
  final String? jenis;
  final int? jumlah;

  const KelolaStokDetail({
    Key? key,
    this.kodeMutasi,
    this.namaBarang,
    this.jenis,
    this.jumlah,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Kelola Stok')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Kode Mutasi : $kodeMutasi", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text(
              "Nama Barang : $namaBarang",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              "$jenis : $jumlah Unit",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}