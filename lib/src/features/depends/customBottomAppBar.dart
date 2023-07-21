import 'package:flutter/material.dart';

import '../../constants/imagePath.dart';
import '../../constants/colors.dart';

class CustomBottomAppBar extends StatelessWidget {
  final ValueNotifier<List<bool>> listSelect;

  const CustomBottomAppBar({required this.listSelect,Key? key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      surfaceTintColor: Colors.white,
      child: ValueListenableBuilder(
        valueListenable: listSelect,
        builder: (context, index, child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                isSelected: listSelect.value[0],
                onPressed: () {
                  List<bool> temp = List.generate(4, (index) => false);
                  temp[0] = true;
                  listSelect.value = temp;
                },
                icon: Image(image: AssetImage(ImagePath.home)),
                selectedIcon: Image(image: AssetImage(ImagePath.homeSelect)),
              ),
              IconButton(
                isSelected: listSelect.value[1],
                onPressed: () {
                  List<bool> temp = List.generate(4, (index) => false);
                  temp[1] = true;
                  listSelect.value = temp;
                },
                icon: Image(image: AssetImage(ImagePath.search)),
                selectedIcon: Image(image: AssetImage(ImagePath.searchSelect)),
              ),
              IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: ColorApp.cameraButton,
                  ),
                  onPressed: () {},
                  icon: Image(image: AssetImage(ImagePath.camera))),
              IconButton(
                isSelected: listSelect.value[2],
                onPressed: () {
                  List<bool> temp = List.generate(4, (index) => false);
                  temp[2] = true;
                  listSelect.value = temp;
                },
                icon: Image(image: AssetImage(ImagePath.heart)),
                selectedIcon: Image(image: AssetImage(ImagePath.heartSelect)),
              ),
              IconButton(
                isSelected: listSelect.value[3],
                onPressed: () {
                  List<bool> temp = List.generate(4, (index) => false);
                  temp[3] = true;
                  listSelect.value = temp;
                },
                icon: Image(image: AssetImage(ImagePath.profile)),
                selectedIcon: Image(image: AssetImage(ImagePath.profileSelect)),
              ),
            ],
          );
        },
      ),
    );
  }
}
