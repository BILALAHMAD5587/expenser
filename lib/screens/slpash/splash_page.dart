import 'package:flutter/material.dart';

class Splashp_Page extends StatefulWidget {
  const Splashp_Page({Key? key}) : super(key: key);

  @override
  State<Splashp_Page> createState() => _Splashp_PageState();
}

class _Splashp_PageState extends State<Splashp_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CircleAvatar(
            backgroundColor: Theme.of(context).backgroundColor,
            radius: 50,
          )
        ],
      ),
    );
  }
}
