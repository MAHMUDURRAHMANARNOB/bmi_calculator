import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget? cardClild;
  final VoidCallback? onCardClick;
  ReusableCard({
    required this.colour,
    this.cardClild,
    this.onCardClick,
  });
  /*const ReusableCard({
    super.key,
  });*/

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCardClick,
      child: Container(
        width: double.infinity,
        /*color: Color(0xFF29363C),*/ //NOTE: We can not use color in container where we use Box decoration
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardClild,
      ),
    );
  }
}
