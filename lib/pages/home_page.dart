import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            //NAVBAR
            Container(
              margin: const EdgeInsets.all(10),
              height: 50,
              child: Row(
                children: const [
                  Icon(
                    Icons.arrow_back_rounded,
                    size: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 250),
                    child: Icon(
                      Icons.share,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.more_vert,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            //BOOK
            Container(
              margin: const EdgeInsets.all(15),
              height: 620,
              width: 400,
              child: Column(
                children: [
                  //TITLE
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Son of the Storm",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color(0xFF3D4EED),
                                fontSize: 22,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Chapter 3 - Lorem ipsum dolor sit amet.",
                            style: TextStyle(
                                color: Color(0xFF030000),
                                fontSize: 17,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Icon(
                          Icons.favorite_outline_rounded,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  //TEXT
                  const Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 5),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Adipiscing ultrices suspendisse augue rhoncus, pretium bibendum luctus massa. Enim pellentesque diam vel at morbi non faucibus erat.",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "Tincidunt viverra metus, ac quis. Tempor eget a in sed integer. Dignissim tincidunt sed a sapien ac. Aliquam in laoreet faucibus pretium suspendisse aliquam viverra. Quis egestas lorem suspendisse enim massa sed auctor pretium. Aliquam amet amet a id. Eu a, tortor quis nunc, semper. Et varius est, ornare dui commodo varius sed. Morbi sit scelerisque odio iaculis tristique volutpat gravida sed vestibulum.",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam faucibus aliquet tincidunt nunc viverra. In sed nec eget convallis netus erat interdum ultrices maecenas. Maecenas leo et venenatis varius.",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam faucibus aliquet tincidunt nunc viverra. In sed nec eget convallis netus erat interdum ultrices maecenas. Maecenas leo et venenatis varius Aliquam amet amet a id. Eu a, tortor quis nunc, semper. Et varius est, ornare dui commodo varius sed. . .",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            ),
            //BOTTOM PANEL
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.music_note,
                    color: Color(0xFF3D4EED),
                    size: 35,
                  ),
                  Text(
                    "Page 32 of 245",
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(
                    Icons.library_books,
                    color: Color(0xFF3D4EED),
                    size: 35,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
