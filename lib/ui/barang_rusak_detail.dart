import 'package:flutter/material.dart';

class BarangRusakDetail extends StatelessWidget {
  final String? kodeRusak;
  final String? namaBarang;
  final int? jumlah;
  final String? keterangan;

  const BarangRusakDetail({
    Key? key,
    this.kodeRusak,
    this.namaBarang,
    this.jumlah,
    this.keterangan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Barang Rusak')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Kode Laporan : $kodeRusak", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text(
              "Nama Barang : $namaBarang",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            const SizedBox(height: 8),
            Text(
              "Jumlah Rusak : $jumlah Unit",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 8),
            Text(
              "Keterangan : $keterangan",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
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