import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nota/cubits/cubit/notes_cubit_cubit.dart';
import 'package:nota/widgets/custom_appbar.dart';
import 'package:nota/widgets/notes_listview.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubitCubit>(context).fetchNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        children: [
          SizedBox(height: 15),
          CustomAppBar(title: "Nota", icon: Icons.search),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
