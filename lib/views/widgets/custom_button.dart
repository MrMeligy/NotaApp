import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.indigoAccent,
      ),
      child: Center(
        child: Text("Add", style: TextStyle(color: Colors.black, fontSize: 26)),
      ),
    );
  }
}
