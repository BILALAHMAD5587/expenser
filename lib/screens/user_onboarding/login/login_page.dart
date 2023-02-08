import 'package:expenser_app/ui/custom_widgets/custom_logo_stack.dart';
import 'package:expenser_app/ui/custom_widgets/custom_rounded_btn.dart';
import 'package:expenser_app/ui/custom_widgets/custom_text_filed.dart';
import 'package:expenser_app/ui/custom_widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var userNameController = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: MediaQuery.of(context).size.height > 350
          ? mainUI()
          : SingleChildScrollView(
              child: mainUI(),
            ),
    );
  }

  Widget mainUI() {
    var width = MediaQuery.of(context).size.width;
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 21, right: 21),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomLogoStack(width > 700 ? 50 : 34),
            SizedBox(
              height: 11,
            ),
            Text(
              "Hello, Again",
              style: width > 700
                  ? mTextStylr43(
                      fontweight: FontWeight.w800,
                      mColor: Theme.of(context).canvasColor)
                  : mTextStylr26(
                      fontweight: FontWeight.w800,
                      mColor: Theme.of(context).canvasColor),
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              "Welcome Back You\`ve been missed",
              style: width > 700
                  ? mTextStylr16(
                      fontweight: FontWeight.w300,
                      mColor: Theme.of(context).shadowColor)
                  : mTextStylr12(
                      fontweight: FontWeight.w400,
                      mColor: Theme.of(context).shadowColor),
            ),

            //////////////////////////////////Uname and Password TextFiled////////////////////////
            SizedBox(
              height: 21,
            ),
            CustomTextFiled(
              mcontroller: userNameController,
              isPassword: false,
              mfillcolor: Theme.of(context).brightness == Brightness.light
                  ? MyColors.secondryWColor
                  : MyColors.secoundryBColor,
              micon: Icons.email_outlined,
            ),
            SizedBox(
              height: 11,
            ),
            CustomTextFiled(
              mcontroller: passController,
              isPassword: true,
              mfillcolor: Theme.of(context).brightness == Brightness.light
                  ? MyColors.secondryWColor
                  : MyColors.secoundryBColor,
              micon: Icons.lock_open_outlined,
            ),
            SizedBox(
              height: 11,
            ),
            CustomRoundedBtn(callback: () {}, text: "Login"),
            SizedBox(height: 12,),
            Text('Create a New Account', style: width > 700 ? mTextStylr19(
              fontweight: FontWeight.w300,
              mColor: Theme.of(context).shadowColor)
            : mTextStylr12(fontweight: FontWeight.w400,
            mColor: Theme.of(context).shadowColor))
          ],
        ),
      ),
    );
  }
}
