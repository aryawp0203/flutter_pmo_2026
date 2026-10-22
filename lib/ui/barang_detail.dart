import 'package:flutter/material.dart';

class BarangDetail extends StatefulWidget {
  final String? kodeBarang;
  final String? namaBarang;
  final int? harga;
  final int? stok;

  const BarangDetail({super.key, this.kodeBarang, this.namaBarang, this.harga, this.stok});

  @override
  State<BarangDetail> createState() => _BarangDetailState();
}

class _BarangDetailState extends State<BarangDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Barang'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Kode Barang : ${widget.kodeBarang}",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              "Nama Barang : ${widget.namaBarang}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Harga : ${widget.harga}",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Stok Gudang : ${widget.stok} Unit",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Kembali'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const KelolaStokForm()),
                    // );
                  },
                  child: const Text('+ Kelola Stok'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const BarangRusakForm()),
                    // );
                  },
                  child: const Text('+ Lapor Rusak'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}