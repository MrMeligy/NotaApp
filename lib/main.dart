import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nota/consts.dart';
import 'package:nota/cubits/cubit/notes_cubit_cubit.dart';
import 'package:nota/models/nota_model.dart';
import 'package:nota/simple_bloc_observer.dart';
import 'package:nota/views/home_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NotaModelAdapter());
  await Hive.openBox<NotaModel>(kBoxName);
  Bloc.observer = SimpleBlocObserver();
  log(Hive.box<NotaModel>(kBoxName).length.toString());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubitCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: HomeView(),
      ),
    );
  }
}
