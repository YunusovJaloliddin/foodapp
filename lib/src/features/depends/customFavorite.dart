import 'package:flutter/material.dart';

class CustomFavorite extends StatelessWidget {
  final Color tintColor;
  final Color textColor;
  final String imagePath;
  final String name;

  const CustomFavorite({
    required this.tintColor,
    required this.textColor,
    required this.imagePath,
    required this.name,
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        height: 144,
        width: 132,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: tintColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage(imagePath)),
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
