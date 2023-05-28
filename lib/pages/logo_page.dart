import 'package:book_ark/pages/enter_page.dart';
import 'package:flutter/material.dart';

class LogoPage extends StatefulWidget {
  const LogoPage({Key? key}) : super(key: key);

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, EnterPage.id);
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3D4EED),
      body: Center(
        child: GestureDetector(
          child: const Image(
            image: AssetImage("assets/images/logo_2.png"),
          ),
        ),
        // child: ,
      ),
    );
  }
}
