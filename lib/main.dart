import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nota/consts.dart';
import 'package:nota/models/nota_model.dart';
import 'package:nota/views/home_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kBoxName);
  Hive.registerAdapter(NotaModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomeView(),
    );
  }
}
