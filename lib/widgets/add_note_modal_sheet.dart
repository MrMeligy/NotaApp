import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:nota/cubits/cubit/add_nota_cubit.dart';
import 'package:nota/widgets/nota_form.dart';

class AddNoteModalSheet extends StatelessWidget {
  const AddNoteModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotaCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: BlocConsumer<AddNotaCubit, AddNotaState>(
          listener: (context, state) {
            if (state is AddNotaSuccess) {
              Navigator.pop(context);
            }
            if (state is AddNotaFailure) {
              SnackBar(
                  content: Text('Failed to add note, ${state.errorMessage}'));
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNotaLoading ? true : false,
              child: SingleChildScrollView(
                child: const NotaForm(),
              ),
            );
          },
        ),
      ),
    );
  }
}
