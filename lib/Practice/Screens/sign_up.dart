import 'package:flutter/material.dart';
import 'package:internship/Practice/Screens/sign-in.dart';
import 'package:internship/Practice/components/custom.dart';

import '../components/constants.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
 final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  bool seenPassword=false;
  bool confirmSeenPassword=false;
  TextEditingController _confirmPasswordController=TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Uihelper.CustomText(
                    textAlign: TextAlign.justify,
                    title: "Create an \naccount",
                    FontSize: 36,
                    FontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: "Montserrat-ExtraBold.ttf",
                  ),
                ),
                SizedBox(height: 43),
        
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: "Username or Email",
                    hintStyle: TextStyle(fontSize: 12, color: textColor),
                    prefixIcon: Icon(Icons.person, color: textColor),
                    filled: true,
                    fillColor: fillColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: borderColor),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: borderColor, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: borderColor, width: 2),
                    ),
                  ),
                ),
                SizedBox(height: 43),
                TextFormField(
                  controller: _passwordController,
                  obscureText: seenPassword?false:true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon:seenPassword? IconButton(onPressed: (){

                      setState(() {
                        seenPassword=false;
                      });
                    },
                      icon:  Icon(
                        Icons.visibility_off,
                        color: textColor,
                      ),
                    ):IconButton(onPressed: (){
                      setState(() {
                        seenPassword=true;
                      });
                    }, icon: Icon(Icons.visibility,color: textColor,)),
                    hintStyle: TextStyle(color: textColor, fontSize: 12),
                    prefixIcon: Icon(Icons.lock, color: textColor),
                    filled: true,
                    fillColor: fillColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: borderColor, width: 10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: borderColor, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: borderColor, width: 2),
                    ),
                  ),
                ),
                SizedBox(height: 43),
                TextFormField(
                  controller: _confirmPasswordController,
                  obscureText: confirmSeenPassword?true:false,
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                    suffixIcon:confirmSeenPassword?IconButton(onPressed: (){
                      setState(() {
                        confirmSeenPassword=false;
                      });
                    }, icon: Icon(Icons.visibility_off,color: textColor,)):IconButton(onPressed: (){
                      setState(() {
                        confirmSeenPassword=true;
                      });
                    }, icon: Icon(Icons.visibility,color: textColor,)),
                    hintStyle: TextStyle(color: textColor, fontSize: 12),
                    prefixIcon: Icon(Icons.lock, color: textColor),
                    filled: true,
                    fillColor: fillColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: borderColor, width: 10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: borderColor, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: borderColor, width: 2),
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: pinkColor, fontSize: 12,fontFamily: "Montserrat-SemiBold.ttf"),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: pinkColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  "- OR continue with -",
                  style: TextStyle(color: borderColor, fontSize: 12),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Image.asset("assets/images/Google.png"),
                    ),
                    SizedBox(width: 5),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset("assets/images/apple.png"),
                    ),
                    SizedBox(width: 5),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset("assets/images/Facebook.png"),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Uihelper.CustomText(
                    textAlign: TextAlign.justify,
                    title: "Already Have An Account?",
                    FontSize: 12,
                    FontWeight: FontWeight.normal,
                    color: borderColor,
                    fontFamily: "Montserrat-SemiBold.ttf",
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                  }, child: Uihelper.CustomText(
                    textAlign: TextAlign.justify,
                    title: ""
                        "Login",
                    FontSize: 14,
                    FontWeight: FontWeight.bold,
                    color: pinkColor,
                    fontFamily: "Montserrat-SemiBold.ttf",
                  ),)
                ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
