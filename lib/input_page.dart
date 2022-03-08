import 'package:bmi_calculator/result_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bottom_button.dart';
import 'constants.dart';
import 'icon_content.dart';
import 'calculate_method.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 170;
  int weight = 65;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E21),
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                // MALE
                Expanded(
                  child: reusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      sex: "MALE",
                    ),
                  ),
                ),
                // FEMALE
                Expanded(
                  child: reusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      sex: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          // height
          Expanded(
            child: reusableCard(
              color: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: bodyNumberStyle,
                      ),
                      Text(
                        "cm",
                        style: labelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          // 3
          Expanded(
            child: Row(
              children: [
                // weight
                Expanded(
                  child: reusableCard(
                    color: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: labelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: bodyNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onTaped: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 14.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onTaped: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // age
                Expanded(
                  child: reusableCard(
                    color: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: labelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: bodyNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onTaped: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 14.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onTaped: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // => ResultPage
          bottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {

              CalculatorMethod calc = CalculatorMethod(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                      bmiResult: calc.calculateBIM(),
                      resultText: calc.getResult(),
                      advice: calc.getAdvice()),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}



