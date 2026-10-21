import 'package:flutter/material.dart';
import 'package:flutter_pmo_2026/ui/produk_detail.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({super.key});

  @override
  State<ProdukForm> createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();
  final _stokProdukTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Produk')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _textboxKodeProduk(),
              _textboxNamaProduk(),
              _textboxHargaProduk(),
              _textboxStokProduk(),
              _tombolSimpan(),
            ],
          ),
        ),
      ),
    );
  }

  TextField _textboxKodeProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Kode Produk"),
      controller: _kodeProdukTextboxController,
    );
  }

  TextField _textboxNamaProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Produk"),
      controller: _namaProdukTextboxController,
    );
  }

  TextField _textboxHargaProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Harga"),
      controller: _hargaProdukTextboxController,
    );
  }

  TextField _textboxStokProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Stok"),
      keyboardType: TextInputType.number,
      controller: _stokProdukTextboxController,
    );
  }

  ElevatedButton _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String kodeProduk = _kodeProdukTextboxController.text;
        String namaProduk = _namaProdukTextboxController.text;
        int harga = int.parse(
            _hargaProdukTextboxController.text); //parsing dari String ke int
        int stok = int.parse(
            _stokProdukTextboxController.text); //parsing dari String ke int
        // pindah ke halaman Produk Detail dan mengirim data
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProdukDetail(
                  kodeProduk: kodeProduk,
                  namaProduk: namaProduk,
                  harga: harga,
                  stok: stok,
                )));
      },
      child: const Text('Simpan'),
    );
  }
}
