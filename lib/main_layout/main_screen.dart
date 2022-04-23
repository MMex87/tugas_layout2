import 'package:flutter/material.dart';
import 'package:tugas_layout/main_layout/add_data/add_data.dart';
import 'package:tugas_layout/tourism/done_tourism_list.dart';
import 'package:tugas_layout/tourism/tourism_list.dart';
import '../tourism/done_tourism_list.dart';

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
        title: const Text("Destinasi Wisata di Jombang"),
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
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (BuildContext context) => const AddData()),
              )),
      body: const TourismList(),
    );
  }
}
