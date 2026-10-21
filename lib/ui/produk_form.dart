import 'package:flutter/material.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({super.key});

  @override
  State<ProdukForm> createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Produk')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxKodeProduk(),
            _textboxNamaProduk(),
            _textboxHargaProduk(),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  TextField _textboxKodeProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: 'Kode Produk'),
    );
  }

  TextField _textboxNamaProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: 'Nama Produk'),
    );
  }

  TextField _textboxHargaProduk() {
    return TextField(
      decoration: const InputDecoration(
        labelText: "Harga",
        hintText: "Contoh: 2500000",
        prefixIcon: Icon(Icons.numbers),
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      maxLength: 12,
    );
  }

  ElevatedButton _tombolSimpan() {
    return ElevatedButton(onPressed: () {}, child: const Text('Simpan'));
  }
}
