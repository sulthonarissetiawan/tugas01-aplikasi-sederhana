import 'package:flutter/material.dart';
import '/screens/main_screen.dart'; 
// Mengimpor halaman utama (MainScreen) yang akan dituju setelah login berhasil.

/// Widget ini merupakan tampilan halaman Login.
/// Di sini pengguna bisa memasukkan email dan password untuk masuk ke aplikasi.
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Menggunakan Scaffold untuk struktur dasar halaman (AppBar, Body, dsb)
      
      // Mengatur warna latar belakang menjadi hitam seperti tema Netflix
      backgroundColor: Colors.black,

      // Menambahkan padding di seluruh sisi halaman
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          // Menyusun widget secara vertikal dan menempatkannya di tengah layar
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch, // biar tombol penuh secara horizontal
          children: [
            // ====================== LOGO / NAMA APLIKASI ======================
            const Text(
              'FLUTTERFLIX',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,           // Warna teks merah khas Netflix
                fontSize: 40,                // Ukuran teks besar
                fontWeight: FontWeight.bold, // Huruf tebal
                letterSpacing: 2.0,          // Spasi antar huruf
              ),
            ),
            const SizedBox(height: 50), // Jarak antara logo dan input pertama

            // ====================== INPUT EMAIL ======================
            TextField(
              keyboardType: TextInputType.emailAddress, // Keyboard khusus email
              decoration: InputDecoration(
                labelText: 'Email',                     // Label untuk input
                labelStyle: TextStyle(color: Colors.grey[400]), // Warna label
                filled: true,                           // Mengisi background input
                fillColor: Colors.grey[800],            // Warna abu-abu gelap
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0), // Membulatkan sudut input
                  borderSide: BorderSide.none,              // Menghapus border default
                ),
              ),
              style: const TextStyle(color: Colors.white), // Warna teks input putih
            ),
            const SizedBox(height: 20),

            // ====================== INPUT PASSWORD ======================
            TextField(
              obscureText: true, // Menyembunyikan teks (diganti menjadi titik-titik)
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.grey[400]),
                filled: true,
                fillColor: Colors.grey[800],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 30),

            // ====================== TOMBOL LOGIN ======================
            ElevatedButton(
              onPressed: () {
                // Saat tombol ditekan, navigasi ke halaman utama aplikasi (MainScreen)
                // Menggunakan pushReplacement agar user tidak bisa kembali ke halaman login
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const MainScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Warna tombol merah khas Netflix
                padding: const EdgeInsets.symmetric(vertical: 16.0), // Tinggi tombol
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Membulatkan tepi tombol
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white, // Warna teks tombol putih
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
