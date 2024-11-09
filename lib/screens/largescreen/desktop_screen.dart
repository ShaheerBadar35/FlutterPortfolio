import 'package:flutter/material.dart';
import 'package:flutterportfolio/constants/style.dart';
import 'package:flutterportfolio/screens/widgets/RotatingImage.dart';
import 'package:flutterportfolio/screens/widgets/headerText.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({super.key});

  @override
  State<DesktopScreen> createState() => _DesktopScreen();
}

class _DesktopScreen extends State<DesktopScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.gradientDecoration,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Headertext(
                            size: size,
                          )
                        ],
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      height: size.height * 0.75,
                      child: Column(
                        children: [
                          Rotatingimage(),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
