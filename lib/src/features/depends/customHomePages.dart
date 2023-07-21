import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomHomePages extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;

  const CustomHomePages({
    required this.image,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage(image)),
        Text(
          text1,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: ColorApp.pageText1Color,
          ),
        ),
        Text(
          text2,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 17,
            color: ColorApp.pageText2Color,
          ),
        ),
      ],
    );
  }
}
