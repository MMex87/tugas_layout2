import 'package:flutter/material.dart';
import 'package:tugas_layout/model/done_tourism_list.dart';
import 'package:tugas_layout/model/tourism_list.dart';
import 'package:tugas_layout/model/tourism_place.dart';


class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Destinasi Wisata di Jombang"),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.done_outline),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      return const DoneTourismList();
                    }));
              })
        ],
      ),
      body: TourismList(),
    );
  }
}








// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:tugas_layout/data/api/api_server.dart';
// import 'package:tugas_layout/data/model/wisata.dart';
// import 'package:tugas_layout/model/done_tourism_list.dart';
// import 'package:tugas_layout/preview/detailScreen.dart';
// import 'package:tugas_layout/preview/list_item.dart';
// import 'package:tugas_layout/provider/done_tourism_provider.dart';
//
//
// class MyScreen extends StatefulWidget {
//
//   @override
//   _MyScreenState createState() => _MyScreenState();
// }
//
// class _MyScreenState extends State<MyScreen> {
//   late Future<WisataResult> _wisata;
//
//   @override
//   void initState(){
//     super.initState();
//     _wisata = ApiServer().wisataJombang();
//   }
//
//   Widget _buildList(BuildContext context){
//     return FutureBuilder(
//         future: _wisata,
//         builder: (context, AsyncSnapshot<WisataResult> snapshot){
//           var state = snapshot.connectionState;
//           if(state != ConnectionState.done){
//             return Center(child: CircularProgressIndicator());
//           }else{
//             if(snapshot.hasData){
//               return ListView.builder(
//                   shrinkWrap: true,
//                   itemCount: snapshot.data?.wisata.length,
//                   itemBuilder: (context, index){
//                     var wisata = snapshot.data?.wisata[index];
//                     return InkWell(
//                       onTap: (){
//                         Navigator.push(context, MaterialPageRoute(builder: (context){
//                           return DetailScreen(place: wisata!);
//                         }));
//                       },
//                       child: Consumer<DoneTourismProvider>(
//                           builder: (context, DoneTourismProvider data, widget) {
//                             return ListItem(
//                               place: wisata!,
//                               isDone: data.doneTourismPlaceList.contains(wisata),
//                               onCheckboxClick: (bool? value){
//                                 setState(() {
//                                   if(value != null){
//                                     value
//                                         ? data.complate(wisata, value)
//                                         : data.complate(wisata, value);
//                                   }
//                                 });
//                               },
//                             );
//                           }
//                       ),
//                     );
//                   });
//             }else if(snapshot.hasError){
//               return Center(child: Text(snapshot.error.toString()));
//             }else{
//               return Text('');
//             }
//           }
//         }
//         );
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text("Destinasi Wisata di Jombang"),
//         actions: <Widget>[
//           IconButton(
//               icon: const Icon(Icons.done_outline),
//               onPressed: (){
//                 Navigator.push(context,
//                   MaterialPageRoute(builder: (context){
//                     return const DoneTourismList();
//                   }));
//               })
//           ],
//         ),
//         body: _buildList(context),
//       );
//   }
// }
//
