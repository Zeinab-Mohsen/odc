import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_flutter_workshop/Core/Resources/ColorManager.dart';
import 'package:odc_flutter_workshop/ViewModel/Bloc/Auth/login_cubit.dart';
import 'package:odc_flutter_workshop/Views/Components/Core/main_appBar.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../ViewModel/Bloc/Home/events_cubit.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EventsCubit(),
      child: BlocConsumer<EventsCubit, AppState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          EventsCubit eventsCubit = EventsCubit.get(context);
          return Scaffold(
            appBar: MainAppbarWithLeading(text: "Events", appBar: AppBar(), leadingFunction: (){Navigator.pop(context);}, elev: 0.0,),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
              ),
            ),
          );
        },
      ),
    );
  }
}
