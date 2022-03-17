import 'package:flutter/material.dart';
import 'package:siakad/pages/main_page.dart';
import 'package:siakad/pages/sign_page.dart';
import 'package:siakad/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/login': (context) => SignPage(),
        '/mainPage': (context) => MainPage(),
      },
    );
  }
}
