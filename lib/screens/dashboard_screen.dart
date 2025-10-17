import 'package:flutter/material.dart';
import '../models/content_model.dart';      // Mengimpor model data "Content"
import '../widgets/content_carousel.dart'; // Mengimpor widget untuk menampilkan konten dalam bentuk carousel

/// Halaman utama setelah login.
/// Menampilkan beberapa kategori konten seperti "Trending", "Anime", dan "Kids".
/// Masing-masing kategori ditampilkan menggunakan widget ContentCarousel.
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  // ========================= DATA DUMMY =========================
  // Data contoh (dummy) untuk simulasi daftar konten.
  // Nantinya data ini bisa diganti dengan data asli dari API atau database.

  // Kategori 1: Trending
  static final List<Content> trendingContent = [
    Content(title: "5 CM", imageUrl: "assets/5cm.jpg"),
    Content(title: "Fast X", imageUrl: "assets/fast_x.jpg"),
    Content(title: "Ada Apa Dengan Cinta", imageUrl: "assets/ada_apa_dengan_cinta.jpg"),
    Content(title: "Dilan 1990", imageUrl: "assets/dilan_1990.jpg"),
  ];

  // Kategori 2: Anime
  static final List<Content> animeContent = [
    Content(title: "Detective Conan", imageUrl: "assets/detective_conan.jpg"),
    Content(title: "Naruto", imageUrl: "assets/naruto.jpg"),
    Content(title: "Attack On Titan", imageUrl: "assets/attack_on_titan.jpg"),
    Content(title: "Haikyu", imageUrl: "assets/haikyu.jpg"),
  ];

  // Kategori 3: Kids
  static final List<Content> kidsContent = [
    Content(title: "The Boss Baby", imageUrl: "assets/the_boss_baby.jpg"),
    Content(title: "Doong Doong", imageUrl: "assets/doong_doong.jpg"),
    Content(title: "Oddbods", imageUrl: "assets/oddbods_s2.jpg"),
    Content(title: "Pororo", imageUrl: "assets/pororo.jpg"),
  ];

  // ========================= BUILD UI =========================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Warna latar belakang hitam seperti Netflix

      // ========================= APP BAR =========================
      appBar: AppBar(
        title: const Text(
          'FLUTTERFLIX', // Nama aplikasi di bagian atas
          style: TextStyle(
            color: Colors.red,           // Warna teks merah
            fontWeight: FontWeight.bold, // Teks tebal
          ),
        ),
        backgroundColor: Colors.black, // Warna AppBar sama dengan background
        elevation: 0,                // Menghapus bayangan AppBar
      ),

      // ========================= BODY =========================
      // Menggunakan ListView agar seluruh kategori dapat di-scroll ke bawah.
      body: ListView(
        children: [
          // Carousel 1: Kategori "Trending"
          ContentCarousel(
            title: 'Trending',
            contentList: trendingContent,
          ),
          const SizedBox(height: 20), // Jarak antar kategori

          // Carousel 2: Kategori "Anime"
          ContentCarousel(
            title: 'Anime',
            contentList: animeContent,
          ),
          const SizedBox(height: 20),

          // Carousel 3: Kategori "Kids"
          ContentCarousel(
            title: 'Kids',
            contentList: kidsContent,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

