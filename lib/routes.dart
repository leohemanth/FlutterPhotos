import 'package:flutter/material.dart';
import 'package:tanghit/screens/login_screen.dart';
import 'package:tanghit/utils/constants.dart';

class Routes {
  var routes = <String, WidgetBuilder>{
    // "/login": (BuildContext context) => new LoginScreen(),
  };

  Routes() {
    runApp(
      MaterialApp(
        routes: routes,
        home: LoginScreen(),
        navigatorKey: rootNavigatorKey,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
