part of 'add_nota_cubit.dart';

@immutable
sealed class AddNotaState {}

final class AddNotaInitial extends AddNotaState {}

final class AddNotaLoading extends AddNotaState {}

final class AddNotaSuccess extends AddNotaState {}

final class AddNotaFailure extends AddNotaState {
  final String errorMessage;
  AddNotaFailure(this.errorMessage);
}
