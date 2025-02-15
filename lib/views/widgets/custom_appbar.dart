import 'package:flutter/material.dart';
import 'package:nota/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon, required this.title});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 28, color: Colors.white)),
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: CustomIcon(icon: icon),
        ),
      ],
    );
  }
}
