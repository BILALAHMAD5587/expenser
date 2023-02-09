import 'package:expenser_app/screens/user_onboarding/signup/signup_page.dart';
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
    
    print(MediaQuery.of(context).size.width);
    
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: MediaQuery.of(context).size.height > 500
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
        padding: const EdgeInsets.all(21),
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
              hint: 'Email Here',
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
              hint: 'PassWord Here',
              mcontroller: passController,
              isPassword: true,
              mfillcolor: Theme.of(context).brightness == Brightness.light
                  ? MyColors.secondryWColor
                  : MyColors.secoundryBColor,
              micon: Icons.lock_open_outlined,
            ),
            SizedBox(
              height: 25,
            ),
            CustomRoundedBtn(callback: () {}, text: "Login"),
            SizedBox(height: 12,),

            MediaQuery.of(context).size.width> 251.333 ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Create a New Account', style: width > 700 ? mTextStylr19(
                  fontweight: FontWeight.w300,
                  mColor: Theme.of(context).shadowColor)
                : mTextStylr12(fontweight: FontWeight.w400,
                mColor: Theme.of(context).shadowColor)),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SiginUp_Page()));
                  },
                  child: Text('Sign Up Now', style: width > 700 ? mTextStylr19(
                      fontweight: FontWeight.w300,
                      mColor: Theme.of(context).canvasColor)
                      : mTextStylr12(fontweight: FontWeight.w400,
                      mColor: Theme.of(context).canvasColor)),
                )

              ],
            ) : Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Create a New Account', style: width > 700 ? mTextStylr19(
                    fontweight: FontWeight.w300,
                    mColor: Theme.of(context).shadowColor)
                    : mTextStylr12(fontweight: FontWeight.w400,
                    mColor: Theme.of(context).shadowColor)),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SiginUp_Page()));
                  },
                  child: Text('Sign Up Now', style: width > 700 ? mTextStylr19(
                      fontweight: FontWeight.w300,
                      mColor: Theme.of(context).canvasColor)
                      : mTextStylr12(fontweight: FontWeight.w400,
                      mColor: Theme.of(context).canvasColor)),
                )

              ],)
          ],
        ),
      ),
    );
  }
}
