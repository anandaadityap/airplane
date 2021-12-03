import 'package:airplane/ui/pages/bonus_pages.dart';
import 'package:airplane/ui/pages/sign_up_pages.dart';
import 'package:airplane/ui/pages/get_started_pages.dart';
import 'package:airplane/ui/pages/splash_pages.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetSartedPage(),
        '/sign-up': (context) => signUpPage(),
        '/bonus': (context) => BonusPages(),
      },
    );
  }
}
