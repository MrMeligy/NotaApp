import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_nota_state.dart';

class AddNotaCubit extends Cubit<AddNotaState> {
  AddNotaCubit() : super(AddNotaInitial());
}
