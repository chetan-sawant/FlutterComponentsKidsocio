import 'package:flutter/material.dart';

import 'loginPage.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  Color _red = HexColor("#ef4138");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 35.0),
            Container(
                height: 500,
                child: Image(
                  image: AssetImage("images/startUpKids.jpg"),
                  fit: BoxFit.contain,
                )),
            SizedBox(height: 15.0),
            RichText(
              text: TextSpan(
                  text: "Make PlayDates for your Kids, Make new Firends",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ),
            Container(
              height: 129,
              width: 390,
              decoration: BoxDecoration(
                  color: Colors.red[600],
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(40.0),
                    topRight: const Radius.circular(40.0),
                  )),
              child: Padding(
                  padding: EdgeInsets.fromLTRB(150, 50, 10, 10),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      Ink(
                        decoration: const ShapeDecoration(
                          color: Colors.yellow,
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                            //  You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class HexColor extends Color {
  static int _getColor(String hex) {
    String formattedHex = "FF" + hex.toUpperCase().replaceAll("#", "");
    return int.parse(formattedHex, radix: 16);
  }

  HexColor(final String hex) : super(_getColor(hex));
}
