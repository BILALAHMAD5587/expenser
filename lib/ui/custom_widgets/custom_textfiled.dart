import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  TextEditingController? mcontroller;
  Color mfillcolor;
  IconData micon;

  CustomTextFiled({required this.mcontroller, required this.mfillcolor, required this.micon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: mcontroller,
      decoration: InputDecoration(
        prefixIcon: Icon(micon),
          prefixIconColor: Theme.of(context).backgroundColor,
          fillColor: mfillcolor,
          filled: true,
          focusColor: Theme.of(context).backgroundColor,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(21))),
    );
  }
}
