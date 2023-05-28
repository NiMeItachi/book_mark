import 'package:book_ark/database/users.dart';
import 'package:book_ark/pages/login_page.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  static const String id = "registration_page";

  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  bool obscureText = true;

  void changeVisibility() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController fullName = TextEditingController();
    TextEditingController emailAddress = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController rePassword = TextEditingController();

    void createUser(){
      String userName = fullName.text;
      String userEmail = emailAddress.text;
      String userPassword = password.text;
      String userRePassword = rePassword.text;

      if(userName.isNotEmpty && userEmail.isNotEmpty && userPassword.isNotEmpty && userRePassword.isNotEmpty){
        User newUser = User(userName, userEmail, userPassword, userRePassword);
        databaseUsers.users.add(newUser);
        Navigator.pushReplacementNamed(context, LoginPage.id);
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    "Create an account",
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
                      "Start your book journey with us.",
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
            height: 316,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 1),
                              color: Colors.grey,
                              blurRadius: 1)
                        ]),
                    child: Row(
                      children: [
                        const Image(
                          image: AssetImage("assets/icons/profile.png"),
                          width: 60,
                          height: 60,
                        ),
                        SizedBox(
                          height: 50,
                          width: 255,
                          child: TextField(
                            controller: fullName,
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              hintText: "Enter full name",
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
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 1),
                              color: Colors.grey,
                              blurRadius: 1)
                        ]),
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
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 1),
                              color: Colors.grey,
                              blurRadius: 1)
                        ]),
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
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 1),
                              color: Colors.grey,
                              blurRadius: 1)
                        ]),
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
                            controller: rePassword,
                            obscureText: obscureText,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Re-enter password",
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
              createUser();
            },
            child: Container(
              margin: const EdgeInsets.only(left: 24, right: 24),
              height: 64,
              width: 360,
              color: const Color(0xFF3D4EED),
              child: const Center(
                child: Text(
                  "Create account",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 75,
          ),

          //LOG IN (text)
          Container(
            margin: const EdgeInsets.only(left: 70),
            height: 22,
            width: 300,
            child: GestureDetector(
              child: Row(
                children: [
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(fontSize: 18),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, LoginPage.id);
                      },
                      child: const Text(
                        "Log in",
                        style: TextStyle(fontSize: 18, color: Colors.blue),
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
