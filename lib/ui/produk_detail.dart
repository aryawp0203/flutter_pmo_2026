import 'package:flutter/material.dart';

class ProdukDetail extends StatefulWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;
  final int? stok;

  const ProdukDetail(
      {super.key, this.kodeProduk, this.namaProduk, this.harga, this.stok});

  @override
  State<ProdukDetail> createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk'),
      ),
      body: Column(
        children: [
          Text("Kode Produk : ${widget.kodeProduk}"),
          Text("Nama Produk : ${widget.namaProduk}"),
          Text("Harga : ${widget.harga}"),
          Text("Stok : ${widget.stok}"),
        ],
      ),
    );
  }
}