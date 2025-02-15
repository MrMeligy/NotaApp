import 'package:flutter/material.dart';
import 'package:nota/views/widgets/custom_appbar.dart';
import 'package:nota/views/widgets/notes_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        children: [
          SizedBox(height: 15),
          CustomAppBar(title: "Nota", icon: Icons.search),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
