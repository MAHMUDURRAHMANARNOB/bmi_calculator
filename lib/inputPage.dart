// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: Color(0x43576979),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Color(0x43576979),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Color(0x43576979),
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Color(0x43576979),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0x43576979),
                  ),
                ),
              ],
            )),
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour});
  final Color colour;
  /*const ReusableCard({
    super.key,
  });*/

  @override
  Widget build(BuildContext context) {
    return Container(
      /*color: Color(0xFF29363C),*/ //NOTE: We can not use color in container where we use Box decoration
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
