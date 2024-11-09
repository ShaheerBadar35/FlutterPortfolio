import 'package:flutter/material.dart';
import 'package:flutterportfolio/constants/colors.dart';
import 'package:flutterportfolio/screens/widgets/socialMedia.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Socialsection extends StatelessWidget {
  const Socialsection({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.bloodred),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Download CV",
                  style: TextStyle(
                    color: Color.fromARGB(255, 193, 148, 161),
                  ),
                ),
                SizedBox.square(
                  dimension: 12,
                ),
                FaIcon(FontAwesomeIcons.download,
                    color: AppColors.bloodred, size: 18),
              ],
            ),
          ),
          SizedBox(width: size.width * 0.014),
          const Socialmedia(icon: FontAwesomeIcons.linkedinIn),
          SizedBox(width: size.width * 0.010),
          const Socialmedia(icon: FontAwesomeIcons.upwork),
          SizedBox(width: size.width * 0.010),
          const Socialmedia(icon: FontAwesomeIcons.github),
          // const Expanded(child: Socialmedia()),
          // SizedBox(width: size.width * 0.010),
          // const Expanded(child: Socialmedia()),
          // SizedBox(width: size.width * 0.010),
          // const Expanded(child: Socialmedia()),
        ],
      ),
    );
  }
}
