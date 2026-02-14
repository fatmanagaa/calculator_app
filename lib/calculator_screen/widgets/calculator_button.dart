import 'package:calculator_screen_ui_logic/calculator_screen/widgets/calculator_button.dart';
import 'package:flutter/material.dart';

import '../../core/calculator_colors.dart';
import 'calculator_button.dart';

typedef OnButtonClick = void Function(String);

class CalculatorButton extends StatelessWidget {
  String text;
  Color backGroundColor;
  Color textColor;
  OnButtonClick onButtonClick;

  CalculatorButton({
    required this.text,
    this.backGroundColor = CalculatorColors.grayColor,
    this.textColor = CalculatorColors.lightBlueColor,

    required this.onButtonClick,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FloatingActionButton(
        backgroundColor: backGroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16),
        ),
        onPressed: () {
          // todo:click
          onButtonClick(text);
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
