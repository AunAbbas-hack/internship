import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:  [
             const Text(
                "Welcome \n Back!",
                textAlign: TextAlign.start,
                style: TextStyle(

                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  fontFamily: "Montserrat-Black",
                ),
              ),
              Container(
                height: 55,
                width: 317,
                decoration: BoxDecoration(
                  color: Color(0xffF83758),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
