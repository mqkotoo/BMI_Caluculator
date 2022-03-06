import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const CardsColor = Color(0xFF1D1E33);
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
                  child: Card(color: CardsColor,),
                ),
                Expanded(
                  child: Card(color: CardsColor,),
                ),
              ],
            ),
          ),
          // 2
          Expanded(
            child: Card(color: CardsColor,),
          ),
          // 3
          Expanded(
            child: Row(
              children: [
                // 1
                Expanded(
                  child: Card(color: CardsColor,)
                ),
                Expanded(
                  child: Card(color: CardsColor,),
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
      )
    );
  }
}

class Card extends StatelessWidget {

  Card({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: color,
        borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }
}