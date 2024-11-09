import 'package:flutter/material.dart';
import 'package:flutterportfolio/constants/colors.dart';
import 'package:flutterportfolio/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.navyblue,
        ),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
