import 'package:flutter/material.dart';

class GudangMenu extends StatelessWidget {
  const GudangMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gudang Menu'),
      ),
      body: const Center(
        child: Text('Selamat datang di Gudang Menu!'),
      ),
    );
  }
}