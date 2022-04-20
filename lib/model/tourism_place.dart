class TourismResult {
  TourismResult({
    required this.status,
    required this.message,
    required this.tourismPlaceList,
  });

  int status;
  String message;
  List<TourismPlace> tourismPlaceList;

  factory TourismResult.fromJson(Map<String, dynamic> json) => TourismResult(
    status: json["status"],
    message: json["message"],
    tourismPlaceList: List<TourismPlace>.from(json["TourismPlace"]
        .map((x) => TourismPlace.fromJson(x))
        .where((tourism) =>
        tourism.name != null &&
        tourism.location != null &&
        tourism.imageassets != null &&
        tourism.description != null &&
        tourism.hari != null &&
        tourism.jam != null &&
        tourism.tiket != null &&
        tourism.gambar1 != null &&
        tourism.gambar2 != null &&
        tourism.gambar3 != null &&
        tourism.gambar4 != null&&
        tourism.gambar5 != null )),
  );

}

class TourismPlace {
  String id;
  String name;
  String location;
  String imageassets;
  String description;
  String gambar1;
  String gambar2;
  String gambar3;
  String gambar4;
  String gambar5;
  String hari;
  String jam;
  String tiket;

  TourismPlace({
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



  factory TourismPlace.fromJson(Map<String, dynamic> json) => TourismPlace(
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