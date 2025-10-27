import 'package:flutter/material.dart';
import 'package:internship/Practice/Screens/home_page.dart';
import 'package:internship/Practice/components/button.dart';
import 'package:internship/Practice/components/constants.dart';
import 'package:internship/Practice/components/custom.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0,horizontal: 40),
        child: Stack(
          children: [
            Image.asset("assets/images/unsplash_fouVDmGXoPI.png",fit: BoxFit.fill,width: double.infinity,height: double.infinity,),
            Column(mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Uihelper.CustomText(
                  textAlign: TextAlign.justify,
                  title: "You want\nAuthentic, here\nyou go!",
                  FontSize: 34,
                  FontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontFamily: "Montserrat-SemiBold.ttf",
                ),
                SizedBox(height: 10,),
                Uihelper.CustomText(
                  textAlign: TextAlign.justify,
                  title: "Find it here, buy it now!",
                  FontSize: 14,
                  FontWeight: FontWeight.normal,
                  color: borderColor,
                  fontFamily: "Montserrat",
                ),
                SizedBox(height: 30,),
                Button(title: "Get Started", onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
