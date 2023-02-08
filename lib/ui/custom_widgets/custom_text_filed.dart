import 'package:expenser_app/ui/custom_widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class CustomTextFiled extends StatefulWidget {
  TextEditingController? mcontroller;
  Color mfillcolor;
  IconData micon;
  bool isPassword;

  CustomTextFiled(
      {required this.mcontroller,
      required this.mfillcolor,
      required this.micon,
      required this.isPassword
      });

  @override
  State<CustomTextFiled> createState() => _CustomTextFiledState();
}

class _CustomTextFiledState extends State<CustomTextFiled> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.mcontroller,
      cursorColor: Theme.of(context).brightness==Brightness.light ? MyColors.textWColor : MyColors.textBColor,
      style: mTextStylr16(
          mColor: Theme.of(context).brightness == Brightness.light
              ? MyColors.textWColor
              : MyColors.textBColor),
      decoration: InputDecoration(
          prefixIcon: Icon(widget.micon),
          iconColor: Theme.of(context).backgroundColor,
          prefixIconColor: Theme.of(context).backgroundColor,
          fillColor: widget.mfillcolor,
          filled: true,
          focusColor: Theme.of(context).backgroundColor,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 1,
                  color: Theme.of(context).brightness==Brightness.light ? MyColors.textBColor : MyColors.textWColor
              ),
              borderRadius: BorderRadius.circular(21)),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 1,
          color: Theme.of(context).brightness==Brightness.light ? MyColors.textWColor : MyColors.textBColor
        ),
        borderRadius: BorderRadius.circular(21)
      )
      ),
    );
  }
}
