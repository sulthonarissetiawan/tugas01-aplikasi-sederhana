/// Class ini berfungsi sebagai model atau blueprint untuk setiap konten
/// yang akan ditampilkan di aplikasi, misalnya film, serial TV, atau video lainnya.
class Content {
  // Properti 'title' digunakan untuk menyimpan judul dari konten (misalnya nama film).
  final String title;

  // Properti 'imageUrl' digunakan untuk menyimpan link atau path gambar poster konten.
  final String imageUrl;

  // Constructor dari class Content.
  // 'required' menandakan bahwa kedua parameter (title dan imageUrl)
  // wajib diisi saat membuat objek Content baru.
  Content({
    required this.title,
    required this.imageUrl,
  });
}
