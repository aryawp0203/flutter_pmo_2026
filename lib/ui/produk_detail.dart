import 'package:flutter/material.dart';

class ProdukDetail extends StatefulWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  const ProdukDetail({super.key, this.kodeProduk, this.namaProduk, this.harga});

  @override
  State<ProdukDetail> createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Produk')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Kode Produk : ${widget.kodeProduk}",
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Nama Produk : ${widget.namaProduk}",
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Harga : ${widget.harga}",
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
