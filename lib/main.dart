import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nota/consts.dart';
import 'package:nota/cubits/cubit/add_nota_cubit.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNotaCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: HomeView(),
      ),
    );
  }
}
