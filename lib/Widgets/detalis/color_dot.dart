import 'package:e_store/constants.dart';
import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key, required this.fillColor, this.isSelect = false,
  });

  final Color fillColor;
  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.symmetric(horizontal: 10.0 / 2.5),
      padding: const EdgeInsets.all(3.0),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: isSelect ? kTextLightColor : Colors.transparent),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}


class Dots extends StatelessWidget {
  const Dots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
    padding: EdgeInsets.symmetric(vertical: 30.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ColorDot(
          fillColor: Colors.blue,
          isSelect: true,
        ),
    
        ColorDot(
          fillColor: Colors.red,
          isSelect: false,
        ),
    
        ColorDot(
          fillColor: Colors.amber,
          isSelect: false,
        ),
        ],
    ),
            );
  }
}