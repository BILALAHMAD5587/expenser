import 'package:expenser_app/ui/custom_widgets/custom_logo_stack.dart';
import 'package:expenser_app/ui/custom_widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Column(
          children: [
            CustomLogoStack(),
            SizedBox(height: 11,),
            Text(
              "Login",
              style: mTextStylr52(
                  fontweight: FontWeight.bold,
                  mColor: Theme.of(context).canvasColor),
            ),
            SizedBox(height: 11,),
            Text("Welcome Back You\`ve been missed", style: mTextStylr52(
                fontweight: FontWeight.w300,
                mColor: MyColors.),),
          ],
        ),
      ),
    );
  }
}
