import 'package:flutter/material.dart';
import 'barang_rusak_form.dart';
import 'barang_rusak_detail.dart';

class BarangRusakPage extends StatefulWidget {
  const BarangRusakPage({super.key});

  @override
  State<BarangRusakPage> createState() => _BarangRusakPageState();
}

class _BarangRusakPageState extends State<BarangRusakPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Barang Rusak'),
        actions: [
          GestureDetector(
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(Icons.add),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BarangRusakForm()),
              );
            },
          )
        ],
      ),
      body: ListView(
        children: [
          const ItemBarangRusak(
            kodeRusak: "R001",
            namaBarang: "TV",
            jumlah: 2,
            keterangan: "Layar retak saat bongkar muat",
          ),
          const ItemBarangRusak(
            kodeRusak: "R002",
            namaBarang: "Blender",
            jumlah: 3,
            keterangan: "Gelas kaca pecah di dus",
          ),
          const SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Kembali ke Data Barang'),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemBarangRusak extends StatelessWidget {
  final String? kodeRusak;
  final String? namaBarang;
  final int? jumlah;
  final String? keterangan;

  const ItemBarangRusak({
    super.key,
    this.kodeRusak,
    this.namaBarang,
    this.jumlah,
    this.keterangan,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Text(kodeRusak.toString()),
        title: Text(namaBarang.toString()),
        subtitle: Text(keterangan.toString()),
        trailing: Text("$jumlah Unit"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BarangRusakDetail(
                kodeRusak: kodeRusak,
                namaBarang: namaBarang,
                jumlah: jumlah,
                keterangan: keterangan,
              ),
            ),
          );
        },
      ),
    );
  }
}
