import 'package:flutter/material.dart';
import 'package:nota/models/nota_model.dart';
import 'package:nota/widgets/custom_appbar.dart';
import 'package:nota/widgets/custom_text_field.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.nota});
  final NotaModel nota;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomAppBar(
              title: "Edit Note",
              icon: Icons.check,
              onPressed: () {
                widget.nota.title = title ?? widget.nota.title;
                widget.nota.content = note ?? widget.nota.content;
                widget.nota.save();
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 24),
            Column(
              children: [
                CustomTextField(
                  initial: widget.nota.title,
                  onChanged: (value) {
                    title = value;
                  },
                ),
                SizedBox(height: 15),
                CustomTextField(
                  initial: widget.nota.content,
                  maxLines: 5,
                  onChanged: (value) {
                    note = value;
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
