class EventKampus {
  final String nama;
  final String lokasi;
  final String tanggal;
  final String deskripsi;
  final double lat;
  final double lng;
  final String mapLink; // Tambahan untuk share Google Maps

  EventKampus({
    required this.nama,
    required this.lokasi,
    required this.tanggal,
    required this.deskripsi,
    required this.lat,
    required this.lng,
    required this.mapLink,
  });
}

final List<EventKampus> eventList = [
  EventKampus(
    nama: "Seminar AI Kampus",
    lokasi: "Aula Utama Universitas",
    tanggal: "12 November 2025",
    deskripsi: "Seminar membahas perkembangan AI dan implementasinya.",
    lat: -6.2005,
    lng: 106.8169,
    mapLink: "https://maps.app.goo.gl/J6rx2Q7Lp8iubA2w8",
  ),
  EventKampus(
    nama: "Workshop Cloud Computing",
    lokasi: "Lab Komputer Gedung B",
    tanggal: "14 November 2025",
    deskripsi: "Pelatihan dasar cloud menggunakan AWS & GCP.",
    lat: -6.2012,
    lng: 106.8201,
    mapLink: "https://maps.app.goo.gl/J6rx2Q7Lp8iubA2w8",
  ),
  EventKampus(
    nama: "Expo Unit Kegiatan Mahasiswa",
    lokasi: "Lapangan Tengah Kampus",
    tanggal: "20 November 2025",
    deskripsi: "Pameran UKM untuk mahasiswa baru.",
    lat: -6.2020,
    lng: 106.8150,
    mapLink: "https://maps.app.goo.gl/J6rx2Q7Lp8iubA2w8",
  ),
];
