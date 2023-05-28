import 'package:book_ark/pages/login_page.dart';
import 'package:book_ark/pages/registration_page.dart';
import 'package:flutter/material.dart';

class EnterPage extends StatelessWidget {
  static const String id = "enter_page";

  const EnterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            //Background image
            const Image(
              height: 2340,
              image: AssetImage("assets/images/background_image.png"),
              fit: BoxFit.cover,
            ),
            //Logo
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(bottom: 550),
                child: Image(
                  image: AssetImage("assets/images/logo_1.png"),
                ),
              ),
            ),
            //Login button
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, LoginPage.id);
              },
              child: Container(
                margin: const EdgeInsets.only(left: 25, top: 540),
                height: 70,
                width: 340,
                color: const Color(0xFF3D4EED),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Log into account",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            //Register button
            GestureDetector(
              onTap: (){Navigator.pushNamed(context, RegistrationPage.id);},
              child: Container(
                margin: const EdgeInsets.only(left: 25, top: 625),
                height: 70,
                width: 340,
                color: Colors.white,
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Create an account",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
