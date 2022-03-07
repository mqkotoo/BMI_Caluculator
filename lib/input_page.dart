import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const cardsColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    child: reusableCard(
                      color: cardsColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        sex: "MALE",
                      ),
                    ),
                  ),
                  // 1.2
                  Expanded(
                    child: reusableCard(
                      color: cardsColor,
                      cardChild: IconContent(icon: FontAwesomeIcons.venus, sex: "FEMALE",),
                    ),
                  ),
                ],
              ),
            ),
            // 2
            Expanded(
              child: Card(
                color: cardsColor,
              ),
            ),
            // 3
            Expanded(
              child: Row(
                children: [
                  // 3.1
                  Expanded(
                      child: Card(
                    color: cardsColor,
                  )),
                  // 3.2
                  Expanded(
                    child: Card(
                      color: cardsColor,
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




