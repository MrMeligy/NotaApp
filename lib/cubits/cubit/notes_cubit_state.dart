part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

final class NotesLoading extends NotesCubitState {}

final class NotesSuccess extends NotesCubitState {
  final List<NotaModel> notes;

  NotesSuccess(this.notes);
}

final class NotesFailiure extends NotesCubitState {
  final String errorMessage;

  NotesFailiure(this.errorMessage);
}
