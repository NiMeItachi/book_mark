import 'package:book_ark/pages/enter_page.dart';
import 'package:book_ark/pages/home_page.dart';
import 'package:book_ark/pages/login_page.dart';
import 'package:book_ark/pages/logo_page.dart';
import 'package:book_ark/pages/registration_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LogoPage(),
      routes: {
        EnterPage.id: (context) => const EnterPage(),
        RegistrationPage.id: (context) => const RegistrationPage(),
        LoginPage.id: (context) => const LoginPage(),
        HomePage.id: (context) => const HomePage(),
      },
    );
  }
}
