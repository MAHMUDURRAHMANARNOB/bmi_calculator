import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class RoundButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const RoundButton({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.white60,
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(
        width: 60.0,
        height: 60.0,
      ),
      elevation: 0,
      splashColor: kBottomContainerColor,
      onPressed: onPressed,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
