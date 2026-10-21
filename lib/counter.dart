import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int angka = 0; // nilai yang dapat berubah

  @override
  void initState() {
    super.initState();
    angka = 0; // inisialisasi nilai awal
  }

  void tambah() {
    setState(() {
      angka++; // mengubah nilai lalu meminta tampilan digambar ulang
    });
  }

  void bersihkan() {
    setState(() {
      angka = 0; // reset nilai ke 0
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Penghitung'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nilai : $angka',
              style: const TextStyle(fontSize: 32),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: tambah,
                  child: const Text('Tambah'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: bersihkan,
                  child: const Text('Reset'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}