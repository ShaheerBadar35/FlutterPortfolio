import 'package:flutter/material.dart';
import 'package:flutterportfolio/constants/colors.dart';

class Styles {
  static const BoxDecoration gradientDecoration = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        AppColors.navyblue,
        Color.fromARGB(255, 42, 78, 125),
      ],
    ),
  );
}
