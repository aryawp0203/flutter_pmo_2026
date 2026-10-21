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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _textboxKodeProduk(),
              _textboxNamaProduk(),
              _textboxHargaProduk(),
              _textboxStokProduk(),
              _textboxSatuanProduk(),
              _tombolSimpan(),
            ],
          ),
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

  TextField _textboxStokProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: 'Stok'),
      keyboardType: TextInputType.number,
    );
  }

  TextField _textboxSatuanProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: 'Satuan'),
    );
  }

  ElevatedButton _tombolSimpan() {
    return ElevatedButton(onPressed: () {}, child: const Text('Simpan'));
  }
}
