import 'package:flutter/material.dart';
import 'package:tugas_layout/model/done_tourism_list.dart';
import 'package:tugas_layout/model/tourism_list.dart';
import 'package:tugas_layout/add_data.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Destinasi Wisata di Jombang"),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.done_outline),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const DoneTourismList();
                }));
              })
        ],
      ),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add),
          onPressed: () => Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext context) => new AddData()),
              )),
      body: TourismList(),
    );
  }
}
