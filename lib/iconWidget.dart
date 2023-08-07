import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const IconWidget(
      {super.key,
      required this.icon,
      this.color = Colors.white,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
          size: 80,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
