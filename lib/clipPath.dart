import 'package:flutter/material.dart';

class ClipPathApp extends StatefulWidget {
  @override
  _ClipPathAppState createState() => _ClipPathAppState();
}

class _ClipPathAppState extends State<ClipPathApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: MyClipperTop(),
            child: Container(
              height: 650,
              decoration: BoxDecoration(color: Colors.red),
              child: Center(
                child: Text(
                  'KID SOCIaaO',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 45),
                ),
              ),
            ),
          ),
          ClipPath(
            clipper: MyClipperBotton(),
            child: Container(
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                child: Text(
                  'KID SOCIO',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 45),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyClipperTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height - 50);
    var controllPoint = Offset(50, size.height);
    var endPoint = Offset(size.width / 5, size.height);
    path.quadraticBezierTo(
        controllPoint.dx, controllPoint.dy, endPoint.dx, endPoint.dy);

    /* var secondcontrollPoint = Offset(50, size.height);
    var secondendPoint = Offset(size.width / 5, size.height);
    path.quadraticBezierTo(secondcontrollPoint.dx, secondcontrollPoint.dy,
        secondendPoint.dx, secondendPoint.dy);
  */
    path.lineTo(size.width, size.height + 50);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class MyClipperBotton extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height + 50);
    var controllPoint = Offset(50, size.height);
    var endPoint = Offset(size.width / 5, size.height);
    path.quadraticBezierTo(
        controllPoint.dx, controllPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height + 50);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
