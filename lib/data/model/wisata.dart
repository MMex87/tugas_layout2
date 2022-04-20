class WisataResult {
  WisataResult({
    required this.kode,
    required this.pesan,
    required this.wisata,
  });

  int kode;
  String pesan;
  List<Wisata> wisata;

  factory WisataResult.fromJson(Map<String, dynamic> json) => WisataResult(
    kode: json["kode"],
    pesan: json["pesan"],
    wisata: List<Wisata>.from((json["wisata"] as List)
        .map((x) => Wisata.fromJson(x))
        .where((wisata) =>
            wisata.name != null &&
            wisata.location != null &&
            wisata.description != null &&
            wisata.imageassets != null &&
            wisata.hari != null &&
            wisata.tiket != null &&
            wisata.jam != null)),
  );

}

class Wisata {
  Wisata({
    required this.id,
    required this.name,
    required this.location,
    required this.imageassets,
    required this.description,
    required this.gambar1,
    required this.gambar2,
    required this.gambar3,
    required this.gambar4,
    required this.gambar5,
    required this.hari,
    required this.jam,
    required this.tiket,
  });

  String id;
  String? name;
  String? location;
  String? imageassets;
  String? description;
  String gambar1;
  String gambar2;
  String gambar3;
  String gambar4;
  String gambar5;
  String? hari;
  String? jam;
  String? tiket;

  factory Wisata.fromJson(Map<String, dynamic> json) => Wisata(
    id: json["id"],
    name: json["name"],
    location: json["location"],
    imageassets: json["imageassets"],
    description: json["description"],
    gambar1: json["gambar1"],
    gambar2: json["gambar2"],
    gambar3: json["gambar3"],
    gambar4: json["gambar4"],
    gambar5: json["gambar5"],
    hari: json["hari"],
    jam: json["jam"],
    tiket: json["tiket"],
  );

}