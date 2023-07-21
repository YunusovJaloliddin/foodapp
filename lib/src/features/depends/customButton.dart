import 'package:flutter/material.dart';

import '../../constants/imagePath.dart';

class CustomButton extends StatelessWidget {
  final List<bool> listSelect;
  final int a;
  final void Function(int a) onPressedList;

  const CustomButton({
    required this.listSelect,
    required this.onPressedList,
    required this.a,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      alignment: Alignment.center,
      onPressed: () => onPressedList(a),
      isSelected: listSelect[a],
      icon: const Image(
        image: AssetImage(ImagePath.rectangle3),
      ),
      selectedIcon: const Image(
        image: AssetImage(ImagePath.rectangle2),
      ),
    );
  }
}
