import 'package:flutter/material.dart';
import '/screens/dashboard_screen.dart';
import '/screens/profile_screen.dart';

/// Widget ini merupakan halaman utama (MainScreen)
/// yang berisi navigasi bawah (BottomNavigationBar)
/// untuk berpindah antara Dashboard dan Profile.
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // ========================= VARIABEL NAVIGASI =========================

  // Menyimpan index dari tab/halaman yang sedang aktif.
  // Nilai awal = 0 → berarti tab pertama (Dashboard) akan ditampilkan lebih dulu.
  int _selectedIndex = 0;

  // Daftar halaman yang akan ditampilkan berdasarkan tab yang dipilih.
  // Menggunakan const agar efisien (tidak rebuild berulang).
  static const List<Widget> _widgetOptions = <Widget>[
    DashboardScreen(), // Index 0 → halaman Dashboard
    ProfileScreen(),   // Index 1 → halaman Profile
  ];

  // Fungsi untuk menangani perubahan tab saat pengguna menekan item di navigasi bawah.
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Ubah halaman aktif sesuai index tab yang ditekan.
    });
  }

  // ========================= BUILD UI =========================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Bagian utama dari halaman (body)
      body: Center(
        // Menampilkan halaman berdasarkan _selectedIndex
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      // ========================= NAVIGASI BAWAH =========================
      bottomNavigationBar: BottomNavigationBar(
        // Item navigasi bawah, masing-masing dengan ikon dan label
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),     // Ikon untuk tab Dashboard
            label: 'Dashboard',         // Label teks di bawah ikon
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),   // Ikon untuk tab Profile
            label: 'Profile',           // Label teks di bawah ikon
          ),
        ],
        currentIndex: _selectedIndex,    // Menentukan tab yang aktif
        onTap: _onItemTapped,            // Fungsi yang dijalankan saat tab ditekan

        // ========================= DESAIN WARNA =========================
        backgroundColor: Colors.grey[900], // Warna latar belakang navbar
        selectedItemColor: Colors.red,     // Warna ikon teks aktif (terpilih)
        unselectedItemColor: Colors.grey,  // Warna ikon teks nonaktif
      ),
    );
  }
}
