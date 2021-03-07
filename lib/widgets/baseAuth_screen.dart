import 'package:flutter/material.dart';

class BaseAuthScreen extends StatefulWidget {
  final Widget body;
  BaseAuthScreen({this.body});
  @override
  _BaseAuthScreenState createState() => _BaseAuthScreenState();
}

class _BaseAuthScreenState extends State<BaseAuthScreen> {
  @override
  Widget build(BuildContext context) {
    bool isKeyboardHidden = MediaQuery.of(context).viewInsets.bottom == 0.0;

    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
              child: widget.body,
            ),
            if (isKeyboardHidden)
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
