import 'package:flutter/material.dart';
import 'package:internship/Practice/Screens/sign_up.dart';

import '../components/constants.dart';
import '../components/custom.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  bool seenPassword=false;

  final TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
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
                    title: "Welcome\nBack!",
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
                  obscureText: true,
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
                SizedBox(height: 4),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: pinkColor, fontSize: 12),
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
                      "Login",
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
                Row(children: [
                  Uihelper.CustomText(
                    textAlign: TextAlign.justify,
                    title: "Create An Account",
                    FontSize: 18,
                    FontWeight: FontWeight.normal,
                    color: borderColor,
                    fontFamily: "Montserrat-SemiBold.ttf",
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                  }, child: Uihelper.CustomText(
                    textAlign: TextAlign.justify,
                    title: "Sign Up",
                    FontSize: 20,
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
