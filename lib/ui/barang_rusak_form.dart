import 'package:flutter/material.dart';
import 'barang_rusak_detail.dart';

class BarangRusakForm extends StatefulWidget {
  const BarangRusakForm({Key? key}) : super(key: key);

  @override
  _BarangRusakFormState createState() => _BarangRusakFormState();
}

class _BarangRusakFormState extends State<BarangRusakForm> {
  final _kodeRusakController = TextEditingController();
  final _namaBarangController = TextEditingController();
  final _jumlahRusakController = TextEditingController();
  final _keteranganController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Barang Rusak')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Kode Laporan Rusak"),
              controller: _kodeRusakController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Nama Barang"),
              controller: _namaBarangController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Jumlah Unit Rusak"),
              controller: _jumlahRusakController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Keterangan Kerusakan"),
              controller: _keteranganController,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BarangRusakDetail(
                      kodeRusak: _kodeRusakController.text,
                      namaBarang: _namaBarangController.text,
                      jumlah: int.parse(_jumlahRusakController.text),
                      keterangan: _keteranganController.text,
                    ),
                  ),
                );
              },
              child: const Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}