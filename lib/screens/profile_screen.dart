import 'package:flutter/material.dart';
import '/screens/login_screen.dart'; 
// Mengimpor halaman Login untuk navigasi saat pengguna logout.

/// Halaman ProfileScreen menampilkan informasi pengguna
/// seperti foto profil, nama, email, dan tombol logout.
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ========================= LATAR & APPBAR =========================
      backgroundColor: Colors.black, // Warna latar belakang hitam (tema Netflix)
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white), // Warna teks putih
        ),
        backgroundColor: Colors.black, // Warna AppBar hitam agar serasi
      ),

      // ========================= BODY =========================
      body: Center(
        // Menyusun elemen di tengah secara vertikal
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ========================= FOTO PROFIL =========================
            const CircleAvatar(
              radius: 50, // Ukuran lingkaran (diameter = 100)
              backgroundImage: AssetImage('assets/profile/profile.jpg'),
              // Gambar profil dari folder assets/profile
            ),
            const SizedBox(height: 20), // Jarak antara foto dan nama

            // ========================= NAMA PENGGUNA =========================
            const Text(
              'Sulthon Aris Setiawan', // Nama pengguna
              style: TextStyle(
                color: Colors.white,       // Warna teks putih
                fontSize: 22,              // Ukuran teks sedang besar
                fontWeight: FontWeight.bold, // Huruf tebal
              ),
            ),
            const SizedBox(height: 8),

            // ========================= EMAIL PENGGUNA =========================
            Text(
              '2317051099@students.unila.ac.id', // Email pengguna
              style: TextStyle(
                color: Colors.grey[400], // Warna abu-abu agar kontras lembut
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 40),

            // ========================= TOMBOL LOGOUT =========================
            ElevatedButton(
              onPressed: () {
                // Saat ditekan, navigasi ke halaman login.
                // pushAndRemoveUntil digunakan agar semua halaman sebelumnya dihapus dari stack,
                // jadi pengguna tidak bisa kembali ke halaman profil setelah logout.
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                  (Route<dynamic> route) => false, // Hapus semua halaman sebelumnya
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Warna tombol merah khas Netflix
                padding: const EdgeInsets.symmetric(
                  horizontal: 50, // Lebar tombol
                  vertical: 15,   // Tinggi tombol
                ),
              ),
              child: const Text(
                'Logout',
                style: TextStyle(
                  fontSize: 16,
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
