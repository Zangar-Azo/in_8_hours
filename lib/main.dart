import 'package:flutter/material.dart';
import 'package:in_8_hours/pages/home_page.dart';
import 'package:in_8_hours/pages/login_page.dart';
import 'package:in_8_hours/themes/images.dart';
import 'package:in_8_hours/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        initialRoute: Routes.homeRoute,
        routes: {
          "/": (context) => LoginPage(),
          Routes.loginRoute: (context) => LoginPage(),
          Routes.homeRoute: (context) => HomePage(),
        });
  }
}
