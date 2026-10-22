import 'package:flutter/material.dart';
import 'package:flutter_pmo_2026/ui/barang_page.dart';
import 'package:flutter_pmo_2026/ui/kelola_stok_detail.dart';
import 'package:flutter_pmo_2026/ui/kelola_stok_form.dart';

class KelolaStokPage extends StatefulWidget {
  const KelolaStokPage({Key? key}) : super(key: key);

  @override
  _KelolaStokPageState createState() => _KelolaStokPageState();
}

class _KelolaStokPageState extends State<KelolaStokPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kelola Stok Gudang'),
        actions: [
          GestureDetector(
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(Icons.add),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const KelolaStokForm()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          const ItemStok(
            kodeMutasi: "S001",
            namaBarang: "Kulkas",
            jenis: "Stok Masuk",
            jumlah: 10,
          ),
          const ItemStok(
            kodeMutasi: "S002",
            namaBarang: "TV",
            jenis: "Stok Keluar",
            jumlah: 5,
          ),
          const ItemStok(
            kodeMutasi: "S003",
            namaBarang: "Blender",
            jenis: "Stok Masuk",
            jumlah: 25,
          ),
          const SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const BarangPage()),
                  (route) => false, // Menghapus semua rute sebelumnya
                );
                // Navigator.pop(context);
              },
              child: const Text('Kembali ke Data Barang'),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemStok extends StatelessWidget {
  final String? kodeMutasi;
  final String? namaBarang;
  final String? jenis;
  final int? jumlah;

  const ItemStok({
    super.key,
    this.kodeMutasi,
    this.namaBarang,
    this.jenis,
    this.jumlah,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: () {
          // Navigasi ke halaman detail
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => KelolaStokDetail(
                kodeMutasi: kodeMutasi,
                namaBarang: namaBarang,
                jenis: jenis,
                jumlah: jumlah,
              ),
            ),
          );
        },
        child: ListTile(
          leading: Text(kodeMutasi.toString()),
          title: Text(namaBarang.toString()),
          subtitle: Text("${jenis.toString()} : ${jumlah.toString()} Unit"),
          trailing: Text(jenis.toString()),
        ),
      ),
    );
  }
}
