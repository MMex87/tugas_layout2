import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_layout/provider/done_tourism_provider.dart';
import 'package:tugas_layout/main_layout/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneTourismProvider(),
      child: MaterialApp(
        title: 'contacts',
        theme: ThemeData(),
        home: MyScreen(),
      ),
    );
  }
}
