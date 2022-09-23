import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Auth/login_cubit.dart';

class NotesCubit extends Cubit<AppState> {
  NotesCubit() : super(HomeInitial());

  static NotesCubit get(context) => BlocProvider.of(context);

}
