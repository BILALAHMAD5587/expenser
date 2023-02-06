import 'dart:async';

import 'package:expenser_app/screens/user_onboarding/login/login_page.dart';
import 'package:expenser_app/ui/custom_widgets/custom_logo_stack.dart';
import 'package:flutter/material.dart';

class Splashp_Page extends StatefulWidget {
  const Splashp_Page({Key? key}) : super(key: key);

  @override
  State<Splashp_Page> createState() => _Splashp_PageState();
}

class _Splashp_PageState extends State<Splashp_Page> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Center(
          child: CustomLogoStack(),
        ));
  }
}
