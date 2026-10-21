import 'package:flutter/material.dart';
import 'package:flutter_pmo_2026/column_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Flutter Pertama',
      home: ColumnWidget(),
    );
  }
}
