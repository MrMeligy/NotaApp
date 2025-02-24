import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nota/cubits/cubit/add_nota_cubit.dart';
import 'package:nota/widgets/nota_form.dart';

class AddNoteModalSheet extends StatelessWidget {
  const AddNoteModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotaCubit(),
      child: Padding(
        padding: EdgeInsets.only(
          left: 12,
          right: 12,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
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
