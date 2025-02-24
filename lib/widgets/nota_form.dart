import 'package:flutter/material.dart';
import 'package:nota/widgets/custom_button.dart';
import 'package:nota/widgets/custom_text_field.dart';

class NotaForm extends StatefulWidget {
  const NotaForm({super.key});

  @override
  State<NotaForm> createState() => _NotaFormState();
}

class _NotaFormState extends State<NotaForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, note;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(height: 32),
          Column(
            children: [
              CustomTextField(
                hint: "Title",
                onSaved: (value) {
                  title = value;
                },
              ),
              const SizedBox(height: 16),
              CustomTextField(
                hint: "Note",
                maxLines: 5,
                onSaved: (value) {
                  note = value;
                },
              ),
            ],
          ),
          const SizedBox(height: 64),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
