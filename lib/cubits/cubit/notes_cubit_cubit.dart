import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:nota/consts.dart';
import 'package:nota/models/nota_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
  List<NotaModel>? notes;
  fetchNotes() {
    var notesBox = Hive.box<NotaModel>(kBoxName);
    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
