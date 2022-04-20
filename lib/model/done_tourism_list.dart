import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_layout/model/tourism_place.dart';
import 'package:tugas_layout/provider/done_tourism_provider.dart';

class DoneTourismList extends StatelessWidget {
  const DoneTourismList({
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<TourismPlace> doneTourismPlaceList =
        Provider.of<DoneTourismProvider>(
          context,
          listen: false,
        ).doneTourismPlaceList;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wisata Telah Dikunjungi"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final TourismPlace place = doneTourismPlaceList[index];
          return Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Expanded(
                  flex: 1,
                  child: Image.asset(place.imageassets),
                ),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(place.name,
                            style: const TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(place.location),
                        ],
                      ),
                    )
                ),
                Icon(Icons.done_outline)
              ],
            ),
          );
        },
        itemCount: doneTourismPlaceList.length,
      ),
    );
  }
}








// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:tugas_layout/provider/done_tourism_provider.dart';
//
// import '../data/model/wisata.dart';
//
// class DoneTourismList extends StatelessWidget {
//   const DoneTourismList({
//     Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final List<Wisata> doneTourismPlaceList =
//         Provider.of<DoneTourismProvider>(
//           context,
//           listen: false,
//         ).doneTourismPlaceList;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Wisata Telah Dikunjungi"),
//       ),
//       body: ListView.builder(
//           itemBuilder: (context, index) {
//             final Wisata place = doneTourismPlaceList[index];
//             return Card(
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget> [
//                   Expanded(
//                     flex: 1,
//                     child: Image.asset(place.imageassets!),
//                   ),
//                   Expanded(
//                       flex: 2,
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisSize: MainAxisSize.min,
//                           children: <Widget>[
//                             Text(place.name!,
//                               style: const TextStyle(fontSize: 16.0),
//                             ),
//                             SizedBox(
//                               height: 10,
//                             ),
//                             Text(place.location!),
//                           ],
//                         ),
//                       )
//                   ),
//                   Icon(Icons.done_outline)
//                 ],
//               ),
//             );
//           },
//           itemCount: doneTourismPlaceList.length,
//       ),
//     );
//   }
// }
