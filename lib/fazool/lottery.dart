import 'package:flutter/material.dart';
import 'dart:math';

class Lottery extends StatefulWidget {
  Lottery({super.key});

  @override
  State<Lottery> createState() => _LotteryState();
}

class _LotteryState extends State<Lottery> {
  int win = 0;
  Random random=Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lottery App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("The winning number is 5"),
            SizedBox(height: 20),
            Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.grey
              ),
              child: win==5?Center(child: Text("You win the lottery")):Center(
                child: Text(textAlign: TextAlign.center,
                  "Your Number is $win\n not the same as winning number better luck next time ",
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
          onPressed: () {
          win=random.nextInt(10);
          setState(() {

          });
          }),
    );
  }
}
