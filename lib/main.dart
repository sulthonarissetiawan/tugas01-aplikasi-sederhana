import 'package:flutter/material.dart';
import 'screens/login_screen.dart'; 
// Mengimpor file login_screen.dart dari folder screens,
// yang berisi tampilan halaman login aplikasi.

void main() {
  runApp(const MyApp());
  // Fungsi utama (main) yang dijalankan pertama kali oleh Flutter.
  // Menjalankan widget MyApp sebagai root dari aplikasi.
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget utama aplikasi.
    // StatelessWidget digunakan karena isi widget ini tidak berubah (tidak punya state).
    return MaterialApp(
      title: 'FlutterFlix',
      // Judul aplikasi yang dapat muncul di task manager atau title bar.

      debugShowCheckedModeBanner: false,
      // Menyembunyikan label "DEBUG" di pojok kanan atas saat mode debug.

      theme: ThemeData(
        // Mengatur tema global aplikasi.
        brightness: Brightness.dark,
        // Mengatur tampilan aplikasi menggunakan mode gelap (dark mode).

        primaryColor: Colors.red,
        // Warna utama aplikasi, digunakan untuk elemen-elemen seperti AppBar dan tombol utama.

        fontFamily: 'Montserrat',
        // Menentukan font default untuk seluruh aplikasi.
        // (Pastikan font Montserrat sudah ditambahkan di pubspec.yaml)
      ),

      home: const LoginScreen(),
      // Menentukan halaman pertama yang akan ditampilkan saat aplikasi dijalankan.
      // Dalam hal ini, halaman login dari file login_screen.dart.
    );
  }
}
