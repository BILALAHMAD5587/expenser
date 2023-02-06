import 'package:expenser_app/screens/slpash/splash_page.dart';
import 'package:expenser_app/ui/custom_widgets/ui_helper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
          primarySwatch: createMaterialColor(MyColors.bgBColor),
          backgroundColor: MyColors.bgBColor,
          canvasColor: MyColors.bgWColor,
          shadowColor: MyColors.LighttextBColor),
      theme: ThemeData(
          primarySwatch: createMaterialColor(MyColors.bgWColor),
          backgroundColor: MyColors.bgWColor,
          canvasColor: MyColors.bgBColor,
          shadowColor: MyColors.LighttextWColor),
      home: Splashp_Page(),
    );
  }
}
