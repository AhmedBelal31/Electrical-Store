import 'package:flutter/material.dart';

import '../constants.dart';

class ColorDot extends StatelessWidget {
  bool isSelected = true;
  Color isFilled;

  ColorDot({
    required this.isSelected,
    required this.isFilled,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          //color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelected ? kTextLightColor : Colors.transparent),
        ),
        padding: EdgeInsets.all(2),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isFilled,
          ),
        ),
      ),
    );
  }
}
