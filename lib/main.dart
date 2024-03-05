import 'package:flutter/material.dart';
import 'package:to/my_theme.dart';
import 'package:to/screens/home/home_screen.dart';
import 'package:to/screens/splash/splash.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: splash_screen.routeName,
      routes: {
        splash_screen.routeName:(context)=>splash_screen(),
        home_screen.routeName:(context)=>home_screen(),

      },
      theme: MyTheme.lightMode,
      darkTheme: MyTheme.darkMode,

    );
  }
}

