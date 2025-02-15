import 'package:flutter/material.dart';
import 'package:nota/views/widgets/add_note_modal_sheet.dart';
import 'package:nota/views/widgets/notes_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return AddNoteModalSheet();
            },
          );
        },
        backgroundColor: Colors.indigo,
        child: Icon(Icons.add),
      ),
      body: NotesViewBody(),
    );
  }
}
