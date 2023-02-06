import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  TextEditingController? mcontroller;
  Color mfillcolor;

  CustomTextFiled({required this.mcontroller, required this.mfillcolor});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: mcontroller,
      decoration: InputDecoration(
          fillColor: mfillcolor,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(21))),
    );
  }
}
