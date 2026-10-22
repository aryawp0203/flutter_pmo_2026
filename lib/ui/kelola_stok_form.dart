import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'kelola_stok_detail.dart';

class KelolaStokForm extends StatefulWidget {
  const KelolaStokForm({super.key});

  @override
  State<KelolaStokForm> createState() => _KelolaStokFormState();
}

class _KelolaStokFormState extends State<KelolaStokForm> {
  final _kodeMutasiController = TextEditingController();
  final _namaBarangController = TextEditingController();
  final _jumlahStokController = TextEditingController();

  String? _selectedJenisMutasi;
  final List<String> _pilihanJenisMutasi = ['Masuk', 'Keluar'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Kelola Stok')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Kode Mutasi"),
              controller: _kodeMutasiController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Nama Barang"),
              controller: _namaBarangController,
            ),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: "Jenis Mutasi (Masuk/Keluar)"),
              initialValue: _selectedJenisMutasi,
              hint: const Text("Pilih Jenis Mutasi"),
              isExpanded: true,
              items: _pilihanJenisMutasi.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedJenisMutasi = newValue;
                });
              },
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Jumlah Unit"),
              controller: _jumlahStokController,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => KelolaStokDetail(
                          kodeMutasi: _kodeMutasiController.text,
                          namaBarang: _namaBarangController.text,
                          jenis: _selectedJenisMutasi,
                          jumlah: int.tryParse(_jumlahStokController.text) ?? 0,
                        ),
                      ),
                    );
                  },
                  child: const Text('Simpan'),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Kembali'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
