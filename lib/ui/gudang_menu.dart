import 'package:flutter/material.dart';
import 'package:flutter_pmo_2026/ui/barang_form.dart';
import 'package:flutter_pmo_2026/ui/barang_page.dart';
import 'package:flutter_pmo_2026/ui/barang_rusak.dart';
import 'package:flutter_pmo_2026/ui/barang_rusak_form.dart';
import 'package:flutter_pmo_2026/ui/kelola_stok.dart';
import 'package:flutter_pmo_2026/ui/kelola_stok_form.dart';

class GudangMenu extends StatelessWidget {
  const GudangMenu({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xFF5E548E);
    const Color cardColor = Color(0xFFF3EDF7);
    const Color backgroundColor = Color(0xFFFAF7FC);
    const Color textColorDark = Color(0xFF1D1B20);
    const Color textColorMuted = Color(0xFF49454F);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: const Text(
          'Menu Gudang Barang',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: textColorDark,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, size: 28, color: textColorDark),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BarangForm()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0, top: 4.0),
            child: RichText(
              text: const TextSpan(
                style: TextStyle(fontSize: 13, color: textColorMuted),
                children: [
                  TextSpan(text: 'Total Jenis Barang: '),
                  TextSpan(
                    text: '6 Item',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: textColorDark,
                    ),
                  ),
                  TextSpan(text: ' | Total Stok: '),
                  TextSpan(
                    text: '194 Unit',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: textColorDark,
                    ),
                  ),
                  TextSpan(text: ' | Rusak: '),
                  TextSpan(
                    text: '6 Unit',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: textColorDark,
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildMenuCard(
            context: context,
            code: 'M01',
            title: 'Data Barang Gudang (barang_page)',
            subtitle: 'Lihat daftar 6 barang, harga & lokasi rak',
            icon: Icons.arrow_forward,
            page: const BarangPage(),
            primaryColor: primaryColor,
            cardColor: cardColor,
            textColorDark: textColorDark,
            textColorMuted: textColorMuted,
          ),
          _buildMenuCard(
            context: context,
            code: 'M02',
            title: 'Form Tambah Barang (barang_form)',
            subtitle: 'Input barang baru dengan tombol Simpan',
            icon: Icons.add,
            page: const BarangForm(),
            primaryColor: primaryColor,
            cardColor: cardColor,
            textColorDark: textColorDark,
            textColorMuted: textColorMuted,
          ),
          _buildMenuCard(
            context: context,
            code: 'M03',
            title: 'Kelola Stok Masuk/Keluar (kelola_stok)',
            subtitle: 'Riwayat 4 mutasi stok barang gudang',
            icon: Icons.arrow_forward,
            page: const KelolaStokPage(),
            primaryColor: primaryColor,
            cardColor: cardColor,
            textColorDark: textColorDark,
            textColorMuted: textColorMuted,
          ),
          _buildMenuCard(
            context: context,
            code: 'M04',
            title: 'Form Mutasi Stok (kelola_stok_form)',
            subtitle: 'Catat stok masuk atau keluar gudang',
            icon: Icons.add,
            page: const KelolaStokForm(),
            primaryColor: primaryColor,
            cardColor: cardColor,
            textColorDark: textColorDark,
            textColorMuted: textColorMuted,
          ),
          _buildMenuCard(
            context: context,
            code: 'M05',
            title: 'Data Barang Rusak (barang_rusak)',
            subtitle: 'Daftar 3 laporan kerusakan barang',
            icon: Icons.arrow_forward,
            page: const BarangRusakPage(),
            primaryColor: primaryColor,
            cardColor: cardColor,
            textColorDark: textColorDark,
            textColorMuted: textColorMuted,
          ),
          _buildMenuCard(
            context: context,
            code: 'M06',
            title: 'Form Lapor Barang Rusak (barang_rusak_form)',
            subtitle: 'Input laporan barang cacat / pecah di gudang',
            icon: Icons.add,
            page: const BarangRusakForm(),
            primaryColor: primaryColor,
            cardColor: cardColor,
            textColorDark: textColorDark,
            textColorMuted: textColorMuted,
          ),
        ],
      ),
    );
  }

  Widget _buildMenuCard({
    required BuildContext context,
    required String code,
    required String title,
    required String subtitle,
    required IconData icon,
    required Widget page,
    required Color primaryColor,
    required Color cardColor,
    required Color textColorDark,
    required Color textColorMuted,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12.0),
      elevation: 0,
      color: cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
        leading: Text(
          code,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: primaryColor,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: textColorDark,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontSize: 12.5,
            color: textColorMuted,
          ),
        ),
        trailing: Icon(
          icon,
          size: 18,
          color: primaryColor,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
      ),
    );
  }
}
