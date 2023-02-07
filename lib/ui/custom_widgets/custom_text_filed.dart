import 'package:expenser_app/ui/custom_widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  TextEditingController? mcontroller;
  Color mfillcolor;
  IconData micon;

  CustomTextFiled(
      {required this.mcontroller,
      required this.mfillcolor,
      required this.micon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: mcontroller,
      style: mTextStylr16(
          mColor: Theme.of(context).brightness == Brightness.light
              ? MyColors.textWColor
              : MyColors.textBColor),
      decoration: InputDecoration(
          prefixIcon: Icon(micon),
          iconColor: Theme.of(context).backgroundColor,
          prefixIconColor: Theme.of(context).backgroundColor,
          fillColor: mfillcolor,
          filled: true,
          focusColor: Theme.of(context).backgroundColor,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(21))),
    );
  }
}
