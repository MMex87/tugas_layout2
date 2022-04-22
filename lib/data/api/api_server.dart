import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tugas_layout/model/tourism_place.dart';

class ApiServer {
  Future<TourismResult> wisataJombang() async {
    final response =
        await http.get(Uri.parse("http://192.168.0.4:8080/flutter/read.php"));
    if (response.statusCode == 200) {
      return TourismResult.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load wisataJombang');
    }
  }

  // void addWisata()async{
  //   final response = await http.post(url)
  // }
}
