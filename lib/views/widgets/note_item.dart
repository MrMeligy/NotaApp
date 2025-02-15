import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.amber,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  "Flutter Tips",
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "Build My Career With Tharwat Samy",
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
                  "15/2/2025",
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
    );
  }
}
