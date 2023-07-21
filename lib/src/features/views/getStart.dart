import 'package:flutter/material.dart';
import 'package:foodapp/src/constants/imagePath.dart';
import 'package:foodapp/src/constants/colors.dart';
import 'package:foodapp/src/features/depends/customGetStartPages.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../depends/customHomePages.dart';
import 'homePage.dart';

class GetStart extends StatefulWidget {
  const GetStart({Key? key}) : super(key: key);

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  List<bool> listSelect = [true, false, false];
  late final PageController controller;
  ValueNotifier<int> pageIndex =ValueNotifier<int>(0);

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void onPressedList(int a) {
    controller.animateToPage(
      pageIndex.value,
      curve: Curves.linear,
      duration: Duration(milliseconds: 200),
    );
    setState(() {
      for (int i = 0; i < listSelect.length; i++) {
        if (a == i) {
          listSelect[i] = true;
        } else {
          listSelect[i] = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              flex: 2,
              child: Image(image: AssetImage(ImagePath.logo2)),
            ),
            Expanded(
              flex: 6,
              child: CustomGetStartPages(),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  TextButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        )),
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(ColorApp.homeColor),
                        fixedSize:
                            MaterialStateProperty.all(const Size(290, 72)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)))),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: ColorApp.richText1,
                        ),
                        children: [
                          const TextSpan(text: "Already Have An Acount? "),
                          TextSpan(
                            text: "Log In",
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: ColorApp.richText2,
                            ),
                            onEnter: (event) {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
