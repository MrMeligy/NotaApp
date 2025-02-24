import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:nota/consts.dart';
import 'package:nota/models/nota_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
  fetchNotes() async {
    emit(NotesLoading());
    try {
      var notesBox = Hive.box<NotaModel>(kBoxName);
      List<NotaModel> notes = notesBox.values.toList();
      emit(NotesSuccess(notes));
    } catch (e) {
      emit(NotesFailiure(e.toString()));
    }
  }
}
