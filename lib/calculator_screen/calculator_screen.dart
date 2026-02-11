import 'package:flutter/material.dart';

import '../calculator_button.dart';
import '../calculator_colors.dart';

class CalculatorScreen extends StatefulWidget {
  static const String routeName='calculator_screen';

  CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String resText='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CalculatorColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.centerRight,

                child: Text(
                  resText,
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w500,
                    color: CalculatorColors.whiteColor,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              spacing: 20,
                              children: [
                                CalculatorButton(
                                  text: 'AC',
                                  textColor: CalculatorColors.whiteColor,
                                  backGroundColor:
                                      CalculatorColors.lightGrayColor,
                                  onButtonClick:onDigitClick,

                                ),
                                CalculatorButton(
                                  text: 'AC',
                                  textColor: CalculatorColors.whiteColor,
                                  backGroundColor:
                                      CalculatorColors.lightGrayColor,
                                    onButtonClick:onDigitClick,
                                ),
                                CalculatorButton(
                                  text: '/',
                                  textColor: CalculatorColors.whiteColor,
                                  backGroundColor:
                                      CalculatorColors.darkBlueColor,
                                    onButtonClick:onDigitClick,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              spacing: 20,
                              children: [
                                CalculatorButton(
                                  text: '7',
                                  textColor: CalculatorColors.lightBlueColor,
                                  backGroundColor:
                                      CalculatorColors.lightGrayColor,
                                    onButtonClick:onDigitClick,
                                ),
                                CalculatorButton(
                                  text: '8',
                                  textColor: CalculatorColors.lightBlueColor,
                                  backGroundColor:
                                      CalculatorColors.lightGrayColor,
                                    onButtonClick:onDigitClick,
                                ),
                                CalculatorButton(
                                  text: '9',
                                  textColor: CalculatorColors.lightBlueColor,
                                  backGroundColor:
                                      CalculatorColors.lightGrayColor,
                                    onButtonClick:onDigitClick,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              spacing: 20,
                              children: [
                                CalculatorButton(
                                  text: '4',
                                  textColor: CalculatorColors.lightBlueColor,
                                  backGroundColor:
                                      CalculatorColors.lightGrayColor,
                                    onButtonClick:onDigitClick,
                                ),
                                CalculatorButton(
                                  text: '5',
                                  textColor: CalculatorColors.lightBlueColor,
                                  backGroundColor:
                                      CalculatorColors.lightGrayColor,
                                    onButtonClick:onDigitClick,
                                ),
                                CalculatorButton(
                                  text: '6',
                                  textColor: CalculatorColors.lightBlueColor,
                                  backGroundColor:
                                      CalculatorColors.lightGrayColor,
                                    onButtonClick:onDigitClick,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              spacing: 20,
                              children: [
                                CalculatorButton(
                                  text: '1',
                                  textColor: CalculatorColors.lightBlueColor,
                                  backGroundColor:
                                      CalculatorColors.lightGrayColor,
                                    onButtonClick:onDigitClick,
                                ),
                                CalculatorButton(
                                  text: '2',
                                  textColor: CalculatorColors.lightBlueColor,
                                  backGroundColor:
                                      CalculatorColors.lightGrayColor,
                                    onButtonClick:onDigitClick,
                                ),
                                CalculatorButton(
                                  text: '3',
                                  textColor: CalculatorColors.lightBlueColor,
                                  backGroundColor:
                                      CalculatorColors.lightGrayColor,
                                    onButtonClick:onDigitClick
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              spacing: 20,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: CalculatorButton(
                                    text: '0',
                                    textColor: CalculatorColors.lightBlueColor,
                                    backGroundColor:
                                        CalculatorColors.lightGrayColor,
                                      onButtonClick:onDigitClick
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: CalculatorButton(
                                    text: '.',
                                    textColor: CalculatorColors.lightBlueColor,
                                    backGroundColor:
                                        CalculatorColors.lightGrayColor,
                                      onButtonClick:onDigitClick
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 1,
                          child: CalculatorButton(
                            text: '*',
                            backGroundColor: CalculatorColors.darkBlueColor,
                            textColor: CalculatorColors.whiteColor,
                              onButtonClick:onOperatorClick
                          ),
                        ),
                        SizedBox(height: 22),
                        Expanded(
                          flex: 1,
                          child: CalculatorButton(
                            text: '-',
                            backGroundColor: CalculatorColors.darkBlueColor,
                            textColor: CalculatorColors.whiteColor,
                              onButtonClick:onOperatorClick
                          ),
                        ),
                        SizedBox(height: 22),
                        Expanded(
                          flex: 2,
                          child: CalculatorButton(
                            text: '+',
                            backGroundColor: CalculatorColors.darkBlueColor,
                            textColor: CalculatorColors.whiteColor,
                              onButtonClick:onOperatorClick
                          ),
                        ),
                        SizedBox(height: 22),
                        Expanded(
                          flex: 2,
                          child: CalculatorButton(
                            text: '=',
                            backGroundColor: CalculatorColors.lightBlueColor,
                            textColor: CalculatorColors.whiteColor,
                              onButtonClick:onOperatorClick
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onDigitClick(String text){

    resText+=text;
    print(resText);
    setState(() {

    });


  }
  String lhs='';
  String operator='';
  void onOperatorClick(String clickedOperator){
    if(operator.isEmpty){
      lhs=resText;
      operator=clickedOperator;
      resText='';
    }
    else{
      String rhs=resText;
      lhs=calculate(lhs,rhs,operator);
      operator=clickedOperator;
      resText='';

    }
    setState(() {

    });


  }

  String calculate(String lhs, String rhs, String operator) {
    double num1=double.parse(lhs);
    double num2=double.parse(lhs);
    double res=0.0;
    if(operator=='+'){
      res=num1+num2;

    }
    else if(operator=='-'){
      res=num1-num2;
    }
    else if(operator=='*'){
      res=num1*num2;
    }
    else if(operator=='/'){
      res=num1/num2;
    }
    return res.toString();

  }


}

