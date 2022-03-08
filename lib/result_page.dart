import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class ResultPage extends StatelessWidget {

  ResultPage({required this.bmiResult,required this.resultText,required this.advice});

  final String bmiResult;
  final String resultText;
  final String advice;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.79),
                child: Text(
                  'Your result',
                  style: titleTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: reusableCard(
              color: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: resultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: bmiNumberText,
                  ),
                  Text(
                    advice,
                    style: bodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          bottomButton(
            buttonTitle: "RE-CALCULATE",
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
