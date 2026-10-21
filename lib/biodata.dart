import 'package:flutter/material.dart';

class Biodata extends StatelessWidget {
  const Biodata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas dan Latihan'),
      ),
      body: const Center(
        child: Text("Nama: Muhammad Fadhlan\nNIM: 123200045\nProdi: D3-TI\nAsal: Bandung"),
      ) 
    );
  }
}