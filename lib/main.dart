import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MotoGearApp());
}

// MaterialApp digunakan sebagai wrapper utama aplikasi Flutter
class MotoGearApp extends StatelessWidget {
  const MotoGearApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Menghilangkan tulisan DEBUG di pojok kanan atas
      debugShowCheckedModeBanner: false,

      // Mengatur tema warna aplikasi
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        fontFamily: 'Inter',
      ),

      // Menentukan halaman utama aplikasi
      home: const HomePage(),
    );
  }
}