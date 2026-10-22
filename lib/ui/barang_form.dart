import 'package:flutter/material.dart';
import 'barang_detail.dart';

class BarangForm extends StatefulWidget {
  const BarangForm({super.key});

  @override
  State<BarangForm> createState() => _BarangFormState();
}

class _BarangFormState extends State<BarangForm> {
  final _kodeBarangTextboxController = TextEditingController();
  final _namaBarangTextboxController = TextEditingController();
  final _hargaBarangTextboxController = TextEditingController();
  final _stokBarangTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Barang'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _textboxKodeBarang(),
              _textboxNamaBarang(),
              _textboxHargaBarang(),
              _textboxStokBarang(),
              const SizedBox(height: 16),
              _tombolSimpan(),
            ],
          ),
        ),
      ),
    );
  }

  _textboxKodeBarang() {
    return TextField(
      decoration: const InputDecoration(labelText: "Kode Barang"),
      controller: _kodeBarangTextboxController,
    );
  }

  _textboxNamaBarang() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Barang"),
      controller: _namaBarangTextboxController,
    );
  }

  _textboxHargaBarang() {
    return TextField(
      decoration: const InputDecoration(labelText: "Harga"),
      controller: _hargaBarangTextboxController,
    );
  }

  _textboxStokBarang() {
    return TextField(
      decoration: const InputDecoration(labelText: "Stok Awal Gudang"),
      controller: _stokBarangTextboxController,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String kodeBarang = _kodeBarangTextboxController.text;
        String namaBarang = _namaBarangTextboxController.text;
        int harga = int.parse(_hargaBarangTextboxController.text);
        int stok = int.parse(_stokBarangTextboxController.text);

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => BarangDetail(
              kodeBarang: kodeBarang,
              namaBarang: namaBarang,
              harga: harga,
              stok: stok,
            ),
          ),
        );
      },
      child: const Text('Simpan'),
    );
  }
}