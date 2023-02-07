import 'package:expenser_app/ui/custom_widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class CustomRoundedBtn extends StatelessWidget {
  VoidCallback callback;
  String text;

  CustomRoundedBtn({required this.callback, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      child: Text(
        text,
        style: mTextStylr16(
            mColor: Theme.of(context).backgroundColor,
            fontweight: FontWeight.w800),
      ),
      style: ElevatedButton.styleFrom(
        primary: Theme.of(context).canvasColor,
      ),
    );
  }
}
