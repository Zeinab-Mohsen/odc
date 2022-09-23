import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Auth/login_cubit.dart';

class EventsCubit extends Cubit<AppState> {
  EventsCubit() : super(HomeInitial());

  static EventsCubit get(context) => BlocProvider.of(context);

}
