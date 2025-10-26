import 'package:flutter/material.dart';

import 'constants.dart';

class customTextformfield extends StatelessWidget {
  TextEditingController Controller = TextEditingController();

  String HintText = "";

  IconData icon;

  customTextformfield({
    super.key,
    required this.Controller,
    required this.icon,
    required this.HintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: Controller,
      decoration: InputDecoration(
        hintText: HintText,
        hintStyle: TextStyle(fontSize: 12, color: textColor),
        prefixIcon: Icon(icon, color: textColor),
        filled: true,
        fillColor: fillColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: borderColor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: borderColor, width: 1),
        ),
      ),
    );
  }
}
