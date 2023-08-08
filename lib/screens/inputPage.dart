// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/components/bottomButton.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/resultPage.dart';
import 'package:bmi_calculator/components/round_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../calculateBmi.dart';
import '../components/reuseableCard.dart';
import '../components/iconWidget.dart';
import 'package:flutter/material.dart';

enum Gender { male, female, none }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  /*Color selectedColor = inactiveCardColor;*/
  Gender selectedGender = Gender.none;
  int height = 180;
  int weight = 78;
  int age = 20;
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
                          ? kActiveCardColor
                          : kInactiveCardColor,
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
                          ? kActiveCardColor
                          : kInactiveCardColor,
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
                    colour: kActiveCardColor,
                    cardClild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HEIGHT",
                          style: kLabelTextStyle,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(
                              height.toString(),
                              style: kNumberTextStyle,
                            ),
                            Text(
                              "cm",
                              style: kLabelTextStyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: kActiveSliderColor,
                            inactiveTickMarkColor: kInactiveCardColor,
                            thumbColor: Color(0xFFEB1555),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 10.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 20),
                            overlayColor: Color(0xFFEB1555).withOpacity(0.2),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 220,
                            onChanged: (double newValue) {
                              setState(() {
                                /*height = newValue.toInt();*/
                                height = newValue.round();
                              });
                              print(height.toString());
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColor,
                      cardClild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WEIGHT",
                            style: kLabelTextStyle,
                          ),
                          Text(
                            '$weight',
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RoundButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      weight -= 1;
                                    });
                                  }),
                              /*SizedBox(
                                height: 10,
                                width: 10,
                              ),*/
                              RoundButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      weight += 1;
                                    });
                                  }),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColor,
                      cardClild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",
                            style: kLabelTextStyle,
                          ),
                          Text(
                            '$age',
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RoundButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      age -= 1;
                                    });
                                  }),
                              /*SizedBox(
                                height: 10,
                                width: 10,
                              ),*/
                              RoundButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      age += 1;
                                    });
                                  }),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              buttonTitle: "Calculate Your BMI",
              onClicked: () {
                CalculateBMI bmi = CalculateBMI(
                  age: age,
                  height: height,
                  weight: weight,
                );
                print(bmi.calculateBmi());
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      BMI: bmi.calculateBmi(),
                      Result: bmi.getResult(),
                      Suggestion: bmi.getSuggestion(),
                    ),
                  ),
                );
              },
            )
          ],
        ));
  }
}
