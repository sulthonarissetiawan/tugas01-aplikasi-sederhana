import 'package:flutter/material.dart';
import '../models/content_model.dart';

/// Widget ini berfungsi untuk menampilkan satu baris konten
/// yang bisa di-scroll ke samping (horizontal carousel),
/// seperti deretan film di aplikasi Netflix.
class ContentCarousel extends StatelessWidget {
  // Judul kategori konten, misalnya "Trending Now" atau "Popular Movies".
  final String title;

  // Daftar konten yang akan ditampilkan (berisi list objek dari class Content).
  final List<Content> contentList;

  // Constructor wajib memiliki title dan contentList.
  const ContentCarousel({
    super.key,
    required this.title,
    required this.contentList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // Menyusun elemen dalam kolom secara vertikal
      crossAxisAlignment: CrossAxisAlignment.start, // teks rata kiri
      children: [
        // Bagian judul kategori
        Padding(
          // Memberi jarak horizontal dan vertikal di sekitar teks judul
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            title, // Menampilkan judul kategori (misal: "Trending Now")
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // Bagian daftar konten (gambar-gambar film) dalam bentuk scroll horizontal
        Container(
          height: 200.0, // Tinggi area tampilan carousel
          child: ListView.builder(
            scrollDirection: Axis.horizontal, // Scroll ke samping (horizontal)
            itemCount: contentList.length, // Banyak item sesuai jumlah data konten
            itemBuilder: (BuildContext context, int index) {
              // Mengambil 1 konten berdasarkan index
              Content content = contentList[index];

              // Mengecek apakah image berasal dari folder assets atau dari URL online
              final imageProvider = content.imageUrl.startsWith('assets/')
                  ? AssetImage(content.imageUrl) // ambil dari lokal assets
                  : NetworkImage(content.imageUrl) as ImageProvider; // ambil dari internet

              // Widget gambar tiap konten
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0), // jarak antar item
                width: 130.0, // lebar tiap item konten
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0), // sudut membulat
                  image: DecorationImage(
                    image: imageProvider, // sumber gambar
                    fit: BoxFit.cover, // gambar memenuhi area container
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

