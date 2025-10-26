
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
 final String title;
 final Color color;
 final VoidCallback onPress;
   Button({super.key,required String this.title,required this.color,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(onTap: onPress,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,

            ),
            child: Center(child: Text(title,style: TextStyle(fontSize: 20,color: Colors.white),)),
          ),
        ),
      ),
    );
  }
}
