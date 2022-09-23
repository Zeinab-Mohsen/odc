import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Auth/login_cubit.dart';

class HomeCubit extends Cubit<AppState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  static int select = 1;

  void change()
  {
    emit(ChangeSelectInitial());
  }

}
