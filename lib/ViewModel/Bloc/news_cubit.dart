import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Auth/login_cubit.dart';

class NewsCubit extends Cubit<AppState> {
  NewsCubit() : super(NewsInitial());

  static NewsCubit get(context) => BlocProvider.of(context);

  void change()
  {
    emit(ChangeSelectInitial());
  }
}


