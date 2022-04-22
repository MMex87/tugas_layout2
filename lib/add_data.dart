import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddData extends StatefulWidget {
  const AddData({Key? key}) : super(key: key);

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerAsset = TextEditingController();
  TextEditingController controllerLocation = TextEditingController();
  TextEditingController controllerDesc = TextEditingController();
  TextEditingController controllerGambar1 = TextEditingController();
  TextEditingController controllerGambar2 = TextEditingController();
  TextEditingController controllerGambar3 = TextEditingController();
  TextEditingController controllerGambar4 = TextEditingController();
  TextEditingController controllerGambar5 = TextEditingController();
  TextEditingController controllerWaktu = TextEditingController();
  TextEditingController controllerJam = TextEditingController();
  TextEditingController controllerTiket = TextEditingController();

  void addData() async {
    var url = "http://192.168.0.4:8080/flutter/tambahdata.php";

    var result = await http.post(Uri.parse(url), body: {
      "itemname": controllerName,
      "itemlocation": controllerLocation,
      "itemasset": controllerAsset,
      "itemdescription": controllerDesc,
      "itemgambar1": controllerGambar1,
      "itemgambar2": controllerGambar2,
      "itemgambar3": controllerGambar3,
      "itemgambar4": controllerGambar4,
      "itemgambar5": controllerGambar5,
      "itemwaktu": controllerWaktu,
      "itemjam": controllerJam,
      "itemtiket": controllerTiket
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Wisata"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Column(
              children: <Widget>[
                TextField(
                  controller: controllerName,
                  decoration: const InputDecoration(
                      hintText: "Nama Wisata", labelText: "Nama Wisata"),
                ),
                const Padding(padding: EdgeInsets.all(10.0)),
                TextField(
                  controller: controllerLocation,
                  decoration: const InputDecoration(
                      hintText: "Lokasi Wisata", labelText: "Lokasi Wisata"),
                ),
                const Padding(padding: EdgeInsets.all(10.0)),
                TextField(
                  controller: controllerAsset,
                  decoration: const InputDecoration(
                      hintText: "Gambar Profil Wisata",
                      labelText: "Gambar Profil Wisata"),
                ),
                const Padding(padding: EdgeInsets.all(10.0)),
                TextField(
                  controller: controllerDesc,
                  decoration: const InputDecoration(
                      hintText: "Description Wisata",
                      labelText: "Description Wisata"),
                ),
                const Padding(padding: EdgeInsets.all(10.0)),
                TextField(
                  controller: controllerGambar1,
                  decoration: const InputDecoration(
                      hintText: "Gambar Wisata", labelText: "Gambar Wisata"),
                ),
                const Padding(padding: EdgeInsets.all(10.0)),
                TextField(
                  controller: controllerGambar2,
                  decoration: const InputDecoration(
                      hintText: "Gambar Wisata", labelText: "Gambar Wisata"),
                ),
                const Padding(padding: EdgeInsets.all(10.0)),
                TextField(
                  controller: controllerGambar3,
                  decoration: const InputDecoration(
                      hintText: "Gambar Wisata", labelText: "Gambar Wisata"),
                ),
                const Padding(padding: EdgeInsets.all(10.0)),
                TextField(
                  controller: controllerGambar4,
                  decoration: const InputDecoration(
                      hintText: "Gambar Wisata", labelText: "Gambar Wisata"),
                ),
                const Padding(padding: EdgeInsets.all(10.0)),
                TextField(
                  controller: controllerGambar5,
                  decoration: const InputDecoration(
                      hintText: "Gambar Wisata", labelText: "Gambar Wisata"),
                ),
                const Padding(padding: EdgeInsets.all(10.0)),
                TextField(
                  controller: controllerWaktu,
                  decoration: const InputDecoration(
                      hintText: "Jadwal Buka Wisata",
                      labelText: "Jadwal Buka Wisata"),
                ),
                const Padding(padding: EdgeInsets.all(10.0)),
                TextField(
                  controller: controllerJam,
                  decoration: const InputDecoration(
                      hintText: "Waktu Buka Wisata",
                      labelText: "Waktu Buka Wisata"),
                ),
                const Padding(padding: EdgeInsets.all(10.0)),
                TextField(
                  controller: controllerTiket,
                  decoration: const InputDecoration(
                      hintText: "Harga Tiket Masuk Wisata",
                      labelText: "Harga Tiket Masuk Wisata"),
                ),
                const Padding(padding: EdgeInsets.all(10.0)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                    child: const Text("Tambah Data"),
                    onPressed: () {
                      addData();
                      Navigator.pop(context);
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
