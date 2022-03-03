import 'package:flutter/material.dart';


class MyClipper extends CustomClipper <Path>{
  @override
  getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height/1.4);
    path.cubicTo(size.width/3, size.height/1, size.width/1.5, size.height, size.width, size.height/1.4);
    path.lineTo(size.width, 0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}