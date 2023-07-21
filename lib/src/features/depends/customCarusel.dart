import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constants/colors.dart';
import 'cutsomCard.dart';

class CustomCarusel extends StatelessWidget {
  CustomCarusel({Key? key}) : super(key: key);

  ValueNotifier<int> activeIndicator = ValueNotifier<int>(0);

  final customButtonList = [
    const CustomCard(),
    const CustomCard(),
    const CustomCard(),
    const CustomCard(),
    const CustomCard(),
    const CustomCard(),
  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: customButtonList.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return customButtonList[index];
          },
          options: CarouselOptions(
            initialPage: 0,
            autoPlay: true,
            autoPlayCurve: Curves.linear,
            height: 200,
            animateToClosest: true,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.scale,
            autoPlayInterval: const Duration(seconds: 2),
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              activeIndicator.value = index;
            },
          ),
        ),
        SizedBox(
          height: 30,
          child: ValueListenableBuilder(
              valueListenable: activeIndicator,
              builder: (context, index, child) {
                return AnimatedSmoothIndicator(
                  activeIndex: activeIndicator.value,
                  count: customButtonList.length,
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
