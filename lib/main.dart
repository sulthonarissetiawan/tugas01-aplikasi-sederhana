import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/main_screen.dart'; // Ditambahkan untuk mendaftarkan route

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterFlix',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.red,
        fontFamily: 'Montserrat',
      ),

      // ========================= PERUBAHAN NAVIGASI =========================

      // Properti 'home' dihapus dan diganti dengan 'initialRoute'
      // untuk menentukan halaman awal.
      initialRoute: '/login',

      // 'routes' digunakan untuk mendaftarkan semua "alamat" halaman aplikasi.
      // Ini adalah pusat navigasi Anda.
      routes: {
        '/login': (context) => const LoginScreen(),
        '/main': (context) => const MainScreen(),
      },
    );
  }
}

