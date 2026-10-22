import 'package:flutter/material.dart';
import 'package:flutter_pmo_2026/ui/gudang_menu.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Latihan UTS',
      home: const GudangMenu(),
    );
  }
}
