import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  // 1 = male,  2 = female
  void updateColor(int gender) {
    // male was pressed
    if (gender == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        // maleがアクティブになるとfemaleはイナクティブになる
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
    // female was pressed
    if (gender == 2) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        // femaleがアクティブになるとmaleはイナクティブになる
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF0A0E21),
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  // 1
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(1);
                        });
                      },
                      child: reusableCard(
                        color: maleCardColor,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          sex: "MALE",
                        ),
                      ),
                    ),
                  ),
                  // 1.2
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(2);
                        });
                      },
                      child: reusableCard(
                        color: femaleCardColor,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.venus,
                          sex: "FEMALE",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // 2
            Expanded(
              child: reusableCard(
                color: activeCardColor,
              ),
            ),
            // 3
            Expanded(
              child: Row(
                children: [
                  // 3.1
                  Expanded(
                      child: reusableCard(
                    color: activeCardColor,
                  )),
                  // 3.2
                  Expanded(
                    child: reusableCard(
                      color: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ));
  }
}
