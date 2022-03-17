import 'dart:async';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:siakad/pages/sign_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return SignPage();
              },
            )));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: DelayedDisplay(
          delay: const Duration(seconds: 1),
          child: Image.asset(
            'assets/logo_upr.png',
            height: 250,
          ),
        ),
      ),
    );
  }
}
