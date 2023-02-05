import 'package:flutter/material.dart';

class MyColors {
  //light theme color

  static const Color bgWColor = Color(0xffffffff);
  static const Color secondryWColor = Color(0xfff1f0f3);

  //dark theme color
  static const Color bgBColor = Color(0xff2c293c);
  static const Color secoundryBColor = Color(0xff737373);
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];

  Map<int, Color> swatch = {};

  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }

  for (var strength in strengths) {
    final double ds = 0.5 - strength;

    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }

  return MaterialColor(color.value, swatch);
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
