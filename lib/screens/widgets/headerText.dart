import 'package:flutter/material.dart';
import 'package:flutterportfolio/constants/colors.dart';
import 'package:flutterportfolio/screens/widgets/socialSection.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Headertext extends StatelessWidget {
  const Headertext({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "I am Shaheer",
            style: TextStyle(
                fontSize: size.width * 0.020,
                color: Color.fromARGB(255, 193, 148, 161),
                fontWeight: FontWeight.bold,
                fontFamily: 'Kanit'),
          ),
          GradientText(
            "Flutter Developer +\nReact Native Developer",
            colors: const [
              AppColors.bloodred,
              Color.fromARGB(255, 193, 148, 161)
            ],
            style: TextStyle(
                fontSize: size.width * 0.040,
                fontFamily: 'Kanit',
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: size.width * 0.5,
            child: const Text(
              "I’m a Flutter and React Native developer with a passion for solving complex problems and delivering effective solutions. I specialize in building cross-platform mobile applications with clean, scalable code, and I’m always focused on creating seamless user experiences. Whether it's integrating backends, optimizing performance, or solving technical challenges, I bring a solution-oriented mindset to every project.",
              style: TextStyle(color: Color.fromARGB(255, 193, 148, 161)),
            ),
          ),
          Container(width: size.width * 0.5, child: Socialsection(size: size)),
        ],
      ),
    );
  }
}
