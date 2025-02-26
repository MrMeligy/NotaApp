import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nota/consts.dart';
import 'package:nota/models/nota_model.dart';
import 'package:nota/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<NotaModel>>(
      valueListenable: Hive.box<NotaModel>(kBoxName).listenable(),
      builder: (context, box, _) {
        final notes = box.values.toList();

        if (notes.isEmpty) {
          return Center(
            child: Text(
              'No notes yet',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
              ),
            ),
          );
        }

        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return NoteItem(nota: notes[index]);
          },
        );
      },
    );
  }
}
