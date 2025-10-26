import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Uihelper {
  static CustomText({
    required TextAlign textAlign,
    required String title,
    required double FontSize,
    required FontWeight FontWeight,
    required Color color,
FontFamily = "Montserrat-Bold.ttf", required String fontFamily,
  }) {
    return Text(
      textAlign: textAlign,
      title,
      style: TextStyle(
        fontSize: FontSize,
        fontWeight: FontWeight,
        color: color,
          fontFamily: FontFamily,
      ),
    );
  }
}
