import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 0,
            child: ClipPath(
              clipper: CustomShape(),
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                    color: Color(0xffED1B24),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(10, 2))),
              ),
            ),
          ),
          Center(child: Text('This is the auth page')),
          Positioned(
            bottom: -100,
            left: -200,
            child: ClipOval(
              child: Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(color: Color(0xff0473DA)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    var pointControl = Offset(size.width, size.height / 4);

    var endPoint = Offset(size.width, size.height);

    path.quadraticBezierTo(
        pointControl.dx, pointControl.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width, 0.0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
