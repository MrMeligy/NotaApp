import 'package:flutter/material.dart';
import 'package:nota/views/widgets/custom_button.dart';
import 'package:nota/views/widgets/custom_text_field.dart';

class AddNoteModalSheet extends StatelessWidget {
  const AddNoteModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 32),
            Column(
              children: [
                CustomTextField(hint: "Title"),
                SizedBox(height: 16),
                CustomTextField(hint: "Note", maxLines: 5),
              ],
            ),
            SizedBox(height: 64),
            CustomButton(),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
