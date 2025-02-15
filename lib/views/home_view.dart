import 'package:flutter/material.dart';
import 'package:nota/views/widgets/notes_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: NotesViewBody());
  }
}
