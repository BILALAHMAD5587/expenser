import 'package:flutter/material.dart';

class MyColors {
  //light theme color

  static const Color bgWColor = Color(0xffffffff);
  static const Color secondryWColor = Color(0xfff1f0f3);

  //dark theme color
  static const Color bgBColor = Color(0xff2c293c);
  static const Color secoundryBColor = Color(0xff737373);
}

TextStyle myHeadLine35({fColor = Colors.green, fweight = FontWeight.w500}) {
  return TextStyle(
    color: fColor,
    fontWeight: fweight,
    fontSize: 35,
  );
}

TextStyle myHeadLine21({fColor = Colors.red, fweight = FontWeight.w500}) {
  return TextStyle(
    color: fColor,
    fontWeight: fweight,
    fontSize: 21,
  );
}

TextStyle myHeadLine15({fColor = Colors.blue, fweight = FontWeight.w500}) {
  return TextStyle(
    color: fColor,
    fontWeight: fweight,
    fontSize: 15,
  );
}
