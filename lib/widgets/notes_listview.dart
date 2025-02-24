import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nota/cubits/cubit/notes_cubit_cubit.dart';
import 'package:nota/models/nota_model.dart';
import 'package:nota/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubitCubit, NotesCubitState>(
      builder: (context, state) {
        List<NotaModel> notes =
            BlocProvider.of<NotesCubitCubit>(context).notes ?? [];

        return ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return NoteItem(
              nota: notes[index],
            );
          },
        );
      },
    );
  }
}
