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
                    onPressed: () {
                      nota.delete();
                    },
                    icon: Icon(Icons.delete, size: 30, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24, bottom: 16),
                  child: Text(
                    formatTimeAgo(DateTime.parse(nota.date)),
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

String formatTimeAgo(DateTime date) {
  final now = DateTime.now();
  final difference = now.difference(date);

  if (difference.inSeconds < 1) return "now";
  if (difference.inSeconds < 60) return "${difference.inSeconds}s";
  if (difference.inMinutes < 60) return "${difference.inMinutes}m";
  if (difference.inHours < 24) return "${difference.inHours}h";
  if (difference.inDays < 7) return "${difference.inDays}d";
  if (difference.inDays < 30) return "${(difference.inDays / 7).floor()}w";
  if (difference.inDays < 365) return "${(difference.inDays / 30).floor()}m";
  return "${(difference.inDays / 365).floor()}y";
}
