import 'package:flutter/material.dart';

import '../../constants/imagePath.dart';
import '../../constants/colors.dart';
import '../../constants/icons.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 169,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: ColorApp.cardColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "A R T I C L E",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: ColorApp.cardText1Color,
                  ),
                ),
                const Text(
                  "The pros and \ncons of fast food.",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: ColorApp.cardText2Color,
                  ),
                ),
                FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: ColorApp.cardButtonColor,
                    minimumSize: Size(104, 32),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Text(
                        "Read Now",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Image(
                        height: 12,
                        width: 12,
                        image: AssetImage(IconApp.cradIcon),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Image(image: AssetImage(ImagePath.homeImage)),
          ],
        ),
      ),
    );
  }
}
