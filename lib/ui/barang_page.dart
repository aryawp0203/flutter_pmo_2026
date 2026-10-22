import 'package:flutter/material.dart';
import 'package:flutter_pmo_2026/ui/barang_detail.dart';
import 'package:flutter_pmo_2026/ui/barang_form.dart';

class BarangPage extends StatefulWidget {
  const BarangPage({super.key});

  @override
  State<BarangPage> createState() => _BarangPageState();
}

class _BarangPageState extends State<BarangPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Barang Gudang'),
        actions: [
          GestureDetector(
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(Icons.add),
            ),
            onTap: () async {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BarangForm()),
              );
            },
          )
        ],
      ),
      body: ListView(
        children: [
          const ItemBarang(kodeBarang: "A001", namaBarang: "Kulkas", harga: 2500000, stok: 24),
          const ItemBarang(kodeBarang: "A002", namaBarang: "Mesin Cuci", harga: 2000000, stok: 18),
          const ItemBarang(kodeBarang: "A003", namaBarang: "TV", harga: 3000000, stok: 32),
          const ItemBarang(kodeBarang: "A004", namaBarang: "AC", harga: 3500000, stok: 15),
          const ItemBarang(kodeBarang: "A005", namaBarang: "Microwave", harga: 1500000, stok: 40),
          const ItemBarang(kodeBarang: "A006", namaBarang: "Blender", harga: 125000, stok: 65),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const KelolaStokPage()));
                },
                child: const Text('Kelola Stok'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const BarangRusakPage()));
                },
                child: const Text('Barang Rusak'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemBarang extends StatelessWidget {
  final String? kodeBarang;
  final String? namaBarang;
  final int? harga;
  final int? stok;

  const ItemBarang({super.key, this.kodeBarang, this.namaBarang, this.harga, this.stok});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          leading: Text(kodeBarang.toString()),
          title: Text(namaBarang.toString()),
          subtitle: Text(harga.toString()),
          trailing: Text("Stok: $stok"),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
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
    );
  }
}