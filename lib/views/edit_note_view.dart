import 'package:flutter/material.dart';
import 'package:nota/models/nota_model.dart';
import 'package:nota/widgets/edit_note_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.nota});
  final NotaModel nota;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteBody(
        nota: nota,
      ),
    );
  }
}
