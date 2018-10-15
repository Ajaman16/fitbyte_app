import 'package:fitbyte_app/src/pages/home_page.dart';
import 'package:fitbyte_app/src/pages/login_page.dart';
import 'package:fitbyte_app/src/redux/middleware/auth_middleware.dart';
import 'package:fitbyte_app/src/redux/states/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../src/redux/reducers/app_reducer.dart';
import 'package:redux_logging/redux_logging.dart';

class App extends StatelessWidget {

  String title = "FytByte";

  final Store<AppState> store = new Store<AppState>(
    appReducer,
    initialState: new AppState(),
    middleware: []
      ..addAll(createAuthMiddleware())
      ..add(new LoggingMiddleware.printer()),
  );

  @override
  Widget build(BuildContext context) {

    //SystemChrome.setEnabledSystemUIOverlays([]);

    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: title,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.green),
        routes: {
          '/': (BuildContext context) => new HomePage(title: title,),
          '/auth': (BuildContext context) => new LoginPage(),
        },
      ),
    );
  }
}
