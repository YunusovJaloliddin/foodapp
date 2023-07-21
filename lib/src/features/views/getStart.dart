import 'package:flutter/material.dart';
import 'package:foodapp/src/constants/imagePath.dart';
import 'package:foodapp/src/constants/colors.dart';
import 'package:foodapp/src/features/depends/customButton.dart';

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
    controller.jumpToPage(
      a,
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
              flex: 4,
              child: PageView(
                controller: controller,
                onPageChanged: onPressedList,
                scrollDirection: Axis.horizontal,
                physics: const ScrollPhysics(),
                children: const [
                  CustomHomePages(
                    image: ImagePath.image1,
                    text1: "Eat Healthy",
                    text2:
                        "Maintaining good health should be the \nprimary focus of everyone.",
                  ),
                  CustomHomePages(
                    image: ImagePath.image2,
                    text1: "Healthy Recipes",
                    text2:
                        "Browse thousands of healthy recipes \nfrom all over the world.",
                  ),
                  CustomHomePages(
                    image: ImagePath.image3,
                    text1: "Track Your Health",
                    text2:
                        "With amazing inbuilt tools you can track \nyour progress.",
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        listSelect: listSelect,
                        onPressedList: onPressedList,
                        a: 0,
                      ),
                      CustomButton(
                        listSelect: listSelect,
                        onPressedList: onPressedList,
                        a: 1,
                      ),
                      CustomButton(
                        listSelect: listSelect,
                        onPressedList: onPressedList,
                        a: 2,
                      ),
                    ],
                  ),
                ],
              ),
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
