import 'package:flutter/material.dart';
import 'package:flutterportfolio/screens/largescreen/desktop_screen.dart';
import 'package:flutterportfolio/screens/mobile/mobile_screen.dart';
import 'package:flutterportfolio/screens/tablet/tablet_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1050) {
        return DesktopScreen();
      } else if (constraints.maxWidth > 500) {
        return TabletScreen();
      } else {
        return MobileScreen();
      }
    });
  }
}
