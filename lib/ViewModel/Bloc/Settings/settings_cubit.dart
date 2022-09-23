import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_flutter_workshop/ViewModel/Bloc/Auth/login_cubit.dart';


class SettingsCubit extends Cubit<AppState> {
  SettingsCubit() : super(SettingsInitial());

  static SettingsCubit get(context) => BlocProvider.of(context);

  void change()
  {
    emit(ChangeSelectInitial());
  }

}
