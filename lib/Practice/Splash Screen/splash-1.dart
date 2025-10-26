import 'package:flutter/material.dart';
import 'package:internship/Practice/Splash%20Screen/splash-2.dart';
import 'package:internship/Practice/components/constants.dart';
import 'package:internship/Practice/components/custom.dart';

class Splash1 extends StatefulWidget {
  const Splash1({super.key});

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "1",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Montserrat-SemiBold.ttf",
                              fontSize: 18,
                            ),
                          ),
                          TextSpan(
                            text: "/3",
                            style: TextStyle(
                              color: borderColor,
                              fontFamily: "Montserrat-SemiBold.ttf",
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Uihelper.CustomText(
                      textAlign: TextAlign.start,
                      title: "Skip",
                      FontSize: 18,
                      FontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontFamily: "fonts/Montserrat-SemiBold.ttf",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 90),
              Image.asset("assets/images/fashion shop-rafiki 1.png"),
              Uihelper.CustomText(
                title: "Choose Products",
                textAlign: TextAlign.start,
                FontSize: 24,
                FontWeight: FontWeight.w800,
                color: Colors.black,
                fontFamily: "Montserrat-ExtraBold.ttf",
              ),
              Uihelper.CustomText(
                title:
                    "Amet minim mollit non deserunt ullamco est\n sit aliqua dolor do amet sint. Velit officia\n consequat duis enim velit mollit.",
                textAlign: TextAlign.center,
                FontSize: 14,
                FontWeight: FontWeight.w600,
                color: borderColor,
                fontFamily: "fonts/Montserrat-SemiBold.ttf",
              ),
              SizedBox(height: 250),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Spacer(flex: 1,),
                  Row(
                    children: [
                      Container(
                        height: 8,
                        width: 40,
                        decoration: BoxDecoration(
                          // shape: BoxShape.circle,
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        height: 10,
                        width: 15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: borderColor,
                        ),
                      ),
                      Container(
                        height: 10,
                        width: 15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: borderColor,
                        ),
                      ),

                    ],
                  ),
                  Spacer(flex: 1,),

                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Splash2()),
                      );
                    },
                    child: Uihelper.CustomText(
                      textAlign: TextAlign.justify,
                      title: "Next",
                      FontSize: 18,
                      FontWeight: FontWeight.w600,
                      color: pinkColor,
                      fontFamily: "fonts/Montserrat-SemiBold.ttf",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
