import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_architecture/src/routes/router.gr.dart';
import 'package:flutter_bloc_architecture/src/ui/screens/timer_screen.dart';

import 'bloc/timer_bloc/bloc.dart';
import 'bloc/timer_bloc/ticker.dart';
import 'utils/utils.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringsConstants.app_name,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme(),
      onGenerateRoute: Router.onGenerateRoute,
      navigatorKey: Router.navigator.key,
      initialRoute: Router.timerScreen,
      home: BlocProvider(
        create: (context) => TimerBloc(ticker: Ticker()),
        child: TimerScreen(),
      ),
    );
  }
}
