import 'package:flutter/material.dart';
import 'dart:async';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(
      Duration(seconds: 3),
          () => Navigator.of(context).pushNamed('/login_page'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 136,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/logo.png")),
              ),
            ),
            Text("Hallo bang"),
          ],
        ),
      ),
    );
  }
}
