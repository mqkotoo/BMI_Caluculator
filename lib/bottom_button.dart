import 'package:flutter/material.dart';

import 'constants.dart';

class bottomButton extends StatelessWidget {
  bottomButton({required this.buttonTitle, required this.onTap});

  final String buttonTitle;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: LargeButtonTextStyle,
          ),
        ),
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: bottomContainerHeight,
        padding: EdgeInsets.only(bottom: 20.0),
      ),
    );
  }
}
