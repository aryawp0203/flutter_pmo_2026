import 'package:flutter/material.dart';
import 'package:flutter_pmo_2026/ui/produk_form.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({super.key});

  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Produk'),
        actions: [
          GestureDetector(
            // menampilkan icon +
            child: const Icon(Icons.add),
            // pada saat icon + di tap
            onTap: () async {
              // berpindah ke halaman ProdukForm
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProdukForm()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: const [
          // List 1
          ItemProduk(kodeProduk: 'A001', namaProduk: 'Kulkas', harga: 2500000),
          // List 2
          ItemProduk(
            kodeProduk: 'A002',
            namaProduk: 'Mesin Cuci',
            harga: 2000000,
          ),
          // List 3
          ItemProduk(kodeProduk: 'A003', namaProduk: 'TV', harga: 3000000),
        ],
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  const ItemProduk({super.key, this.kodeProduk, this.namaProduk, this.harga});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(namaProduk.toString()),
        subtitle: Text(harga.toString()),
      ),
    );
  }
}
