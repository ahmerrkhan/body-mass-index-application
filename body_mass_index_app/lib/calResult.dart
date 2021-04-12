import 'dart:math';
import 'package:flutter/material.dart';
import 'InputScreen.dart';
import 'resultScreen.dart';

class CalculateResult  {
  CalculateResult(this.weight,this.height);
  final int height;
  final int weight;
  double result;
  String msg = "";


  calculateResult(){
    result = weight/pow(height/100, 2);
    return result.toStringAsFixed(1);
  }
  String getDiscription(){
    if(result>25){
      return "          Overweight\n\n"
          "You have to lose weight";

    }
    else if(result>18.5){
      return "              Normal\n\n"
          "You have a normal BMI";

    }
    else if(result<18.5){
      return "          Underweight\n\n"
          "You have to gain weight";

    }
  }


}
