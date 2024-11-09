import 'package:flutter/material.dart';
import 'package:flutterportfolio/constants/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Socialmedia extends StatelessWidget {
  const Socialmedia({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          // height: 40,
          // width: 10,
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.bloodred),
          ),
          child: Center(
            child: IconButton(
              hoverColor: const Color.fromARGB(255, 205, 154, 187),
              onPressed: () {},
              icon: FaIcon(icon, color: AppColors.bloodred, size: 15),
            ),
          ),
        ),
      ],
    );
  }
}
