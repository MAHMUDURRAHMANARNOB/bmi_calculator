// ignore_for_file: prefer_const_constructors

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'reuseableCard.dart';
import 'iconWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const activeCardColor = Color(0x43576979);
const inactiveCardColor = Color(0x11576979);
const bottomContainerColor = Color(0xFFEB1555);
const bottomContainerHeight = 80.0;

enum Gender { male, female, none }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  /*Color selectedColor = inactiveCardColor;*/
  Gender selectedGender = Gender.none;
  /*Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;*/

  /*void updateCardColor(Gender gender) {
    if (gender == Gender.male) {
      maleCardColor = activeCardColor;
      femaleCardColor = inactiveCardColor;
    }
    if (gender == Gender.female) {
      femaleCardColor = activeCardColor;
      maleCardColor = inactiveCardColor;
    }
  }*/

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
                      onCardClick: () {
                        setState(() {
                          /*updateCardColor(Gender.male);*/
                          selectedGender = Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardClild: IconWidget(
                        icon: FontAwesomeIcons.mars,
                        color: Colors.lightBlueAccent,
                        label: "MALE",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onCardClick: () {
                        setState(() {
                          /*updateCardColor(Gender.female);*/
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                      cardClild: IconWidget(
                        icon: FontAwesomeIcons.venus,
                        color: Colors.pinkAccent,
                        label: "FEMALE",
                      ),
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
                    colour: activeCardColor,
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
              ],
            )),
            Container(
              width: double.infinity,
              height: bottomContainerHeight,
              color: bottomContainerColor,
            )
          ],
        ));
  }
}
