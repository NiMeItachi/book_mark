import 'package:book_ark/database/users.dart';
import 'package:book_ark/pages/home_page.dart';
import 'package:book_ark/pages/registration_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String id = "login_page";

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailAddress = TextEditingController();
    TextEditingController password = TextEditingController();

    bool obscureText = true;

    void changeVisibility() {
      setState(() {
        obscureText = !obscureText;
      });
    }

    @override
    void dispose() {
      password.dispose();
      super.dispose();
    }

    void logIn() {
      for (int i = 0; i < databaseUsers.users.length; i++) {
        String thisUserEmail = databaseUsers.users[i].email;
        String thisUserPassword = databaseUsers.users[i].password;
        debugPrint(
            "$i = ${databaseUsers.users[i].email}, ${databaseUsers.users[i].password}");

        if (thisUserEmail == emailAddress.text &&
            thisUserPassword == password.text) {
          Navigator.pushReplacementNamed(context, HomePage.id);
        }
      }
    }

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Text
          Container(
            margin: const EdgeInsets.only(top: 87, left: 24),
            width: 300,
            height: 70,
            alignment: Alignment.topLeft,
            child: Column(
              children: const [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Log into account",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Text(
                      "Get back to your reading list.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //Buttons
          Container(
            margin: const EdgeInsets.all(24),
            width: 400,
            height: 158,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: BorderDirectional(
                        bottom: BorderSide(
                          color: const Color(0xFF3D4EED).withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Image(
                          image: AssetImage("assets/icons/sms.png"),
                          width: 60,
                          height: 60,
                        ),
                        SizedBox(
                          height: 50,
                          width: 255,
                          child: TextField(
                            controller: emailAddress,
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              hintText: "Enter full email address",
                              border: InputBorder.none,
                              labelStyle:
                                  TextStyle(color: Colors.grey, fontSize: 18,),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: BorderDirectional(
                        bottom: BorderSide(
                          color: const Color(0xFF3D4EED).withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Image(
                          image: AssetImage("assets/icons/lock.png"),
                          width: 60,
                          height: 60,
                        ),
                        SizedBox(
                          height: 50,
                          width: 255,
                          child: TextField(
                            controller: password,
                            obscureText: obscureText,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter password",
                              suffixIcon: IconButton(
                                icon: Icon(
                                  obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.grey,
                                ),
                                onPressed: () {
                                  changeVisibility();
                                },
                              ),
                              labelStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 40,
          ),

          //Button - CREATE ACCOUNT
          GestureDetector(
            onTap: () {
              logIn();
            },
            child: Container(
              margin: const EdgeInsets.only(left: 24, right: 24),
              height: 64,
              width: 360,
              color: const Color(0xFF3D4EED),
              child: const Center(
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 75,
          ),

          //REGISTRATION (text)
          Container(
            margin: const EdgeInsets.only(left: 80),
            height: 22,
            width: 300,
            child: GestureDetector(
              child: Row(
                children: [
                  const Text(
                    "New here? ",
                    style: TextStyle(fontSize: 18),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RegistrationPage.id);
                      },
                      child: const Text(
                        "Create an account",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                            fontStyle: FontStyle.normal),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
