import 'package:flutter/material.dart';
import 'package:internship/fazool/Calculator/cButton.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var userInput="";
  var answer="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(userInput.toString(),style: TextStyle(color: Colors.white,fontSize: 30),),
                    Text(answer.toString(),style: TextStyle(color: Colors.white,fontSize: 30),)
                  ],
                ),
              ),
              Expanded(flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Button(title: "AC",color: Colors.grey,onPress: (){
                          userInput="";
                          answer="";
                          setState(() {

                          });
                        },),
                        Button(title: "+/-",color: Colors.grey,onPress: (){
                          userInput+="+/-";
                          setState(() {

                          });
                        },),
                        Button(title: "%",color: Colors.grey,onPress: (){
                          userInput+="%";
                          setState(() {

                          });
                        },),
                        Button(title: "/",color: Colors.orange,onPress: (){
                          userInput+="/";
                          setState(() {

                          });
                        },),
                
                      ],
                    ),
                    Row(
                      children: [
                        Button(title: "7",color: Colors.grey,onPress: (){
                          userInput+="7";
                          setState(() {

                          });
                        },),
                        Button(title: "8",color: Colors.grey,onPress: (){
                          userInput+="8";
                          setState(() {

                          });
                        },),
                        Button(title: "9",color: Colors.grey,onPress: (){
                          userInput+="9";
                          setState(() {

                          });
                        },),
                        Button(title: "x",color: Colors.orange,onPress: (){
                          userInput+="x";
                          setState(() {

                          });
                        },),
                      ],
                    ),
                    Row(
                      children: [
                        Button(title: "4",color: Colors.grey,onPress: (){
                          userInput+="4";
                          setState(() {

                          });
                        },),
                        Button(title: "5",color: Colors.grey,onPress: (){
                          userInput+="5";
                          setState(() {

                          });
                        },),
                        Button(title: "6",color: Colors.grey,onPress: (){
                          userInput+="6";
                          setState(() {

                          });
                        },),
                        Button(title: "-",color: Colors.orange,onPress: (){
                          userInput+="-";
                          setState(() {

                          });
                        },),
                      ],
                    ),
                    Row(
                      children: [
                        Button(title: "1",color: Colors.grey,onPress: (){
                          userInput+="1";
                          setState(() {

                          });
                        },),
                        Button(title: "2",color: Colors.grey,onPress: (){
                          userInput+="2";
                          setState(() {

                          });
                        },),
                        Button(title: "3",color: Colors.grey,onPress: (){
                          userInput+="3";
                          setState(() {

                          });
                        },),
                        Button(title: "+",color: Colors.orange,onPress: (){
                          userInput+="+";
                          setState(() {

                          });
                        },),
                      ],
                    ),
                    Row(
                      children: [
                        Button(title: "0",color: Colors.grey,onPress: (){
                          userInput+="0";
                          setState(() {

                          });
                        },),
                        Button(title: ".",color: Colors.grey,onPress: (){
                          userInput+="%";
                          setState(() {

                          });
                        },),
                        Button(title: "DEL",color: Colors.grey,onPress: (){
                          userInput=userInput.substring(0,userInput.length-1);
                          setState(() {

                          });
                        },),
                        Button(title: "=",color: Colors.orange,onPress: (){
                          userInput="=";
                          setState(() {

                          });
                        },),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
