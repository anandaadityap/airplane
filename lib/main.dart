import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/cubit/destination_cubit.dart';
import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/ui/pages/bonus_pages.dart';
import 'package:airplane/ui/pages/main_pages.dart';
import 'package:airplane/ui/pages/sign_in_pages.dart';
import 'package:airplane/ui/pages/sign_up_pages.dart';
import 'package:airplane/ui/pages/get_started_pages.dart';
import 'package:airplane/ui/pages/splash_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => DestinationCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetSartedPage(),
          '/sign-up': (context) => signUpPage(),
          '/sign-in': (context) => signInPage(),
          '/bonus': (context) => BonusPages(),
          '/main': (context) => mainPage(),
        },
      ),
    );
  }
}
