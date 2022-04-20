import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_layout/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.shadowsIntoLightTextTheme()),
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              FittedBox(
                child: Image.asset(place.imageassets,height: 200,),
                fit: BoxFit.fill,
              ),
              Container(
                child: Text(place.name,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.pacifico(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    )
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children:<Widget>[
                        Icon(Icons.calendar_today),
                        Text(place.hari),
                      ],
                    ),
                    Column(
                      children: <Widget> [
                        Icon(Icons.access_time),
                        Text(place.jam)
                      ],
                    ),
                    Column(
                      children:<Widget> [
                        Icon(Icons.monetization_on_outlined),
                        Text(place.tiket)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Text(place.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        child: Image.asset(place.gambar1),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        child: Image.asset(place.gambar2),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        child: Image.asset(place.gambar3),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        child: Image.asset(place.gambar4),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        child: Image.asset(place.gambar5),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:tugas_layout/data/model/wisata.dart';
//
// class DetailScreen extends StatelessWidget {
//   const DetailScreen({Key? key, required this.place}) : super(key: key);
//
//   final Wisata place;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(textTheme: GoogleFonts.shadowsIntoLightTextTheme()),
//       home: Scaffold(
//         body: SafeArea(
//           child: ListView(
//             scrollDirection: Axis.vertical,
//             children: <Widget>[
//               FittedBox(
//                 child: Image.asset(place.imageassets!,height: 200,),
//                 fit: BoxFit.fill,
//               ),
//               Container(
//                 child: Text(place.name!,
//                     textAlign: TextAlign.center,
//                     style: GoogleFonts.pacifico(
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold
//                     )
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.symmetric(vertical: 16.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: <Widget>[
//                     Column(
//                       children:<Widget>[
//                         Icon(Icons.calendar_today),
//                         Text(place.hari!),
//                       ],
//                     ),
//                     Column(
//                       children: <Widget> [
//                         Icon(Icons.access_time),
//                         Text(place.jam!)
//                       ],
//                     ),
//                     Column(
//                       children:<Widget> [
//                         Icon(Icons.monetization_on_outlined),
//                         Text(place.tiket!)
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.all(16),
//                 child: Text(place.description!,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 16),
//                 ),
//               ),
//               Container(
//                 height: 150,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   reverse: true,
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.all(4.0),
//                       child: ClipRRect(
//                         child: Image.asset(place.gambar1),
//                         borderRadius: BorderRadius.circular(15.0),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(4.0),
//                       child: ClipRRect(
//                         child: Image.asset(place.gambar2),
//                         borderRadius: BorderRadius.circular(15.0),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(4.0),
//                       child: ClipRRect(
//                         child: Image.asset(place.gambar3),
//                         borderRadius: BorderRadius.circular(15.0),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(4.0),
//                       child: ClipRRect(
//                         child: Image.asset(place.gambar4),
//                         borderRadius: BorderRadius.circular(15.0),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(4.0),
//                       child: ClipRRect(
//                         child: Image.asset(place.gambar5),
//                         borderRadius: BorderRadius.circular(15.0),
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
