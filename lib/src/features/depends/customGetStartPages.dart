import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constants/colors.dart';
import '../../constants/imagePath.dart';
import 'customHomePages.dart';

class CustomGetStartPages extends StatelessWidget {

  ValueNotifier<int> pageIndex =ValueNotifier<int>(0);

  final customGetStartPageList=[
    const CustomHomePages(
      image: ImagePath.image1,
      text1: "Eat Healthy",
      text2:
      "Maintaining good health should be the \nprimary focus of everyone.",
    ),
    const CustomHomePages(
      image: ImagePath.image2,
      text1: "Healthy Recipes",
      text2:
      "Browse thousands of healthy recipes \nfrom all over the world.",
    ),
    const CustomHomePages(
      image: ImagePath.image3,
      text1: "Track Your Health",
      text2:
      "With amazing inbuilt tools you can track \nyour progress.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: customGetStartPageList.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return customGetStartPageList[index];
          },
          options: CarouselOptions(
            initialPage: 0,
            autoPlayCurve: Curves.linear,
            height: 450,
            enlargeCenterPage: true,
            autoPlayInterval: const Duration(seconds: 2),
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              pageIndex.value = index;
            },
          ),
        ),
        SizedBox(
          height: 30,
          child: ValueListenableBuilder(
              valueListenable: pageIndex,
              builder: (context, index, child) {
                return AnimatedSmoothIndicator(
                  activeIndex: pageIndex.value,
                  count: customGetStartPageList.length,
                  effect:  const ExpandingDotsEffect(
                    expansionFactor: 1.7,
                    dotWidth: 12,
                    dotHeight: 8,
                    dotColor: ColorApp.cardIndicatorDotColor,
                    activeDotColor: ColorApp.cardButtonColor,
                  ),
                );
              }
          ),
        ),
      ],
    );
  }
}
