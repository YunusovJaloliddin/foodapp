import 'package:flutter/material.dart';
import 'package:foodapp/src/constants/colors.dart';

import '../../constants/imagePath.dart';
import 'getStart.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    super.initState();
    startPage();
  }

  void startPage() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const GetStart()));
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorApp.homeColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox.shrink(),
            Image(image: AssetImage(ImagePath.logo)),
            Text(
              "ZUAMICA",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                fontFamily: "Nunito",
                color: ColorApp.homeTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
