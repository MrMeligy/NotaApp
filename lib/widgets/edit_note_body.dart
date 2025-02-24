import 'package:flutter/material.dart';
import 'package:nota/widgets/custom_appbar.dart';
import 'package:nota/widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomAppBar(title: "Edit Note", icon: Icons.check),
            SizedBox(height: 24),
            Column(
              children: [
                CustomTextField(hint: "Title"),
                SizedBox(height: 15),
                CustomTextField(hint: "Note", maxLines: 5),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
