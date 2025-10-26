import 'package:flutter/material.dart';
import 'package:internship/Practice/components/button.dart';
import 'package:internship/Practice/components/constants.dart';
import 'package:internship/Practice/components/custom.dart';
import 'package:internship/Practice/components/textformfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController _forgotPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Uihelper.CustomText(
                  textAlign: TextAlign.justify,
                  title: "Forgot\npassword?",
                  FontSize: 36,
                  FontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: "Montserrat-ExtraBold.ttf",
                ),
              ),
              SizedBox(height: 30),
              customTextformfield(
                Controller: _forgotPasswordController,
                icon: Icons.mail,
                HintText: "Enter your email address",
              ),
              SizedBox(height: 30,),
              Align(
                alignment: Alignment.topLeft,
                child: Uihelper.CustomText(
                  textAlign: TextAlign.justify,
                  title:
                      "* We will send you a message to set or reset\n your new password",
                  FontSize: 12,
                  FontWeight: FontWeight.w400,
                  color: borderColor,
                  fontFamily: "Montserrat",
                ),
              ),
              SizedBox(height: 40),
              Button(title: "Submit", onPress: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
