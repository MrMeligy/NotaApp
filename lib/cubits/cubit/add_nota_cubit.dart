import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:nota/consts.dart';
import 'package:nota/models/nota_model.dart';

part 'add_nota_state.dart';

class AddNotaCubit extends Cubit<AddNotaState> {
  AddNotaCubit() : super(AddNotaInitial());
  addNota(NotaModel nota) async {
    emit(AddNotaLoading());
    try {
      var notesBox = Hive.box<NotaModel>(kBoxName);
      await notesBox.add(nota);
      emit(AddNotaSuccess());
    } catch (e) {
      emit(AddNotaFailure(e.toString()));
    }
  }
}
