import 'package:flutter/material.dart';
import 'package:foodapp/src/constants/imagePath.dart';
import 'package:foodapp/src/constants/colors.dart';

import '../../constants/icons.dart';
import '../depends/customBottomAppBar.dart';
import '../depends/customCarusel.dart';
import '../depends/customFavorite.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ValueNotifier<List<bool>> listSelect = ValueNotifier<List<bool>>(<bool>[
    true,
    false,
    false,
    false,
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomAppBar(listSelect: listSelect),
      body: Padding(
        padding: const EdgeInsets.only(left: 28.0, right: 28, top: 98),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: ColorApp.homeRichText1,
                ),
                children: [
                  TextSpan(
                    text: "Hello Shambhavi,",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: ColorApp.homeRichText2,
                    ),
                  ),
                  TextSpan(text: "\nFind, track and eat heathy food."),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: CustomCarusel(),
            ),
            SizedBox(
              height: 88,
              width: double.infinity,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: ColorApp.filledButtonColor,
                ),
                child: Stack(
                  children: [
                    const Image(
                      image: AssetImage(ImagePath.homeImageButton),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Track Your \nWeekly Progress',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          FilledButton(
                            style: FilledButton.styleFrom(
                              backgroundColor: Colors.white,
                              minimumSize: const Size(98, 32),
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
                                    color: ColorApp.filledButtonTextColor,
                                  ),
                                ),
                                Image(
                                  height: 12,
                                  width: 12,
                                  color: ColorApp.filledButtonTextColor,
                                  image: AssetImage(IconApp.cradIcon),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Choose Your Favorites",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomFavorite(
                    tintColor: ColorApp.favorite1Box,
                    textColor: ColorApp.favoriteText1Box,
                    imagePath: ImagePath.strawberry,
                    name: "Fruit",
                  ),
                  CustomFavorite(
                    tintColor: ColorApp.favorite2Box,
                    textColor: ColorApp.favoriteText2Box,
                    imagePath: ImagePath.favorite2,
                    name: "Fruit",
                  ),
                  CustomFavorite(
                    tintColor: ColorApp.favorite3Box,
                    textColor: ColorApp.favoriteText1Box,
                    imagePath: ImagePath.strawberry,
                    name: "Fruit",
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
