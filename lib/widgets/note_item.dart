import 'package:flutter/material.dart';
import 'package:nota/models/nota_model.dart';
import 'package:nota/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.nota});
  final NotaModel nota;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView();
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.amber,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(
                    nota.title,
                    style: TextStyle(fontSize: 28, color: Colors.black),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      nota.content,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black.withValues(alpha: 0.5),
                      ),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete, size: 30, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24, bottom: 16),
                  child: Text(
                    nota.date,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withValues(alpha: 0.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
