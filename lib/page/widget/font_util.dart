import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrightdemo/res/styles.dart';

class FontUtil {
  static Widget text16Bold(String text, {Color color = Colors.white}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: FontSize.sFont16,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }

  static Widget text14Bold(String text, {Color color = Colors.white}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: FontSize.sFont14,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }

  static Widget text14(String text, {Color color = Colors.white}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: FontSize.sFont14,
        color: color,
      ),
    );
  }
}
