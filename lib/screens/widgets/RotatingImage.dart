import 'package:flutter/material.dart';
import 'package:flutterportfolio/constants/colors.dart';
import 'dart:math' as math;

class Rotatingimage extends StatefulWidget {
  const Rotatingimage({super.key});

  @override
  State<Rotatingimage> createState() => RotatingimageState();
}

class RotatingimageState extends State<Rotatingimage> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (event) => setState(() {
        isHovered = true;
      }),
      onExit: (event) => setState(() {
        isHovered = false;
      }),
      child: AnimatedContainer(
        duration: const Duration(microseconds: 300),
        transform: Matrix4.rotationZ(isHovered ? 0 : math.pi / 36),
        height: size.width * 0.24,
        width: size.width * 0.24,
        decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/Profile_pic.jpg'),
          ),
          border: Border.all(color: AppColors.bloodred, width: 1.2),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
