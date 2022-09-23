import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_flutter_workshop/ViewModel/Bloc/Auth/login_cubit.dart';


class OurPartnersCubit extends Cubit<AppState> {
  OurPartnersCubit() : super(OurPartnersInitial());

  static OurPartnersCubit get(context) => BlocProvider.of(context);
}
