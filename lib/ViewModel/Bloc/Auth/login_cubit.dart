import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:odc_flutter_workshop/Model/Auth/login_model.dart';
import 'package:odc_flutter_workshop/ViewModel/DataBase/Network/end_points.dart';

import '../../DataBase/Network/dio_helper.dart';

part '../app_state.dart';

class LoginCubit extends Cubit<AppState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginModel? loginModel;


  login() async {
    var data = {
      "email": emailController.text.toString(),
      "password": passwordController.text.toString(),
    };

    await DioHelper.postData(url: loginEndPoint, data: data).then((value) {
      loginModel = LoginModel.fromJson(data);
      print(value.data);
    }
    ).catchError((e){
      print(e);
    });
  }

}
