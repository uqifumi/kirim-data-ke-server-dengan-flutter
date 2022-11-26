class Pengguna {
  final String nama;
  final String pekerjaan;
  final String id;
  final String disimpan;

  const Pengguna(
      {required this.nama,
      required this.pekerjaan,
      required this.id,
      required this.disimpan});

  factory Pengguna.fromJson(Map<String, dynamic> json) {
    return Pengguna(
        nama: json['name'],
        pekerjaan: json['job'],
        id: json['id'],
        disimpan: json['createdAt']);
  }
}
