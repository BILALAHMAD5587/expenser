import 'package:expenser_app/ui/custom_widgets/custom_logo_stack.dart';
import 'package:expenser_app/ui/custom_widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class SiginUp_Page extends StatefulWidget {
  const SiginUp_Page({Key? key}) : super(key: key);

  @override
  State<SiginUp_Page> createState() => _SiginUp_PageState();
}

class _SiginUp_PageState extends State<SiginUp_Page> {
  var nameController = TextEditingController();
  var emailcontroller = TextEditingController();
  var passController = TextEditingController();
  var ConfirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }

  Widget mainUI(){
    var width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints){
      print(constraints.maxWidth);
      print(constraints.maxWidth);

      return Center(child:
        Padding(padding: const EdgeInsets.all(21),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomLogoStack(width > 500 ? 50 : 34),
            SizedBox(height: 21,),
            Text('Get Started',
            style: constraints.maxWidth > 500 ? mTextStylr43(
              fontweight: FontWeight.bold,
              mColor: Theme.of(context).canvasColor) : mTextStylr26(
              fontweight: FontWeight.bold,
              mColor: Theme.of(context).canvasColor),),
            SizedBox(height: 11,),
            Text('Start managing Your Expense Today!',
              style: constraints.maxWidth > 500 ? mTextStylr19(
                  fontweight: FontWeight.w300,
                  mColor: Theme.of(context).canvasColor) : mTextStylr12(
                  fontweight: FontWeight.w300,
                  mColor: Theme.of(context).canvasColor),),

          ],
        ),
        ),);
    });
  }
}
