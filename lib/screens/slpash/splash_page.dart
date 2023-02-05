import 'dart:async';

import 'package:expenser_app/screens/user_onboarding/login/login_page.dart';
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
      body: Stack(
        children: [
          Center(
              child: CircleAvatar(
            backgroundColor: Theme.of(context).canvasColor,
            radius: 50,
          )),
          Center(
              child: ImageIcon(
            AssetImage('assets/images/wallet_bw.png'),
            size: 55,
            color: Theme.of(context).backgroundColor,
          ))
        ],
      ),
    );
  }
}
