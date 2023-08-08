import 'package:bmi_calculator/components/bottomButton.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reuseableCard.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String BMI;
  final String Result;
  final String Range;
  final String Suggestion;
  const ResultPage({
    super.key,
    required this.BMI,
    required this.Result,
    required this.Suggestion,
    required this.Range,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bmi Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              child: const Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardClild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    Result,
                    style: kResultTextStyle,
                  ),
                  Text(
                    BMI,
                    style: kBMITextStyle,
                  ),
                  Text(
                    '$Result BMI Range: \n$Range',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                  Text(
                    Suggestion,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: "Re-Calculate your BMI",
            onClicked: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
