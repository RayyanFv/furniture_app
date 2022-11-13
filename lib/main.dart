import 'package:flutter/material.dart';
import 'pages/splashScreen.dart';
import 'pages/loginPage.dart';
import 'pages/navigationBar/mainPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => splashScreen(),
        '/login_page': (context) => loginPage(),
        '/home' : (context) => mainPage(),
      },
    );
  }
}