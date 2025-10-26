import 'package:flutter/material.dart';

import 'constants.dart';

class Button extends StatelessWidget {
 final String title;
 final VoidCallback onPress;

   Button({super.key,required this.title,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          color: pinkColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
