import 'dart:math';

class CalculatorMethod {

  CalculatorMethod({required this.height,required this.weight,});

  final int height;
  final int weight;

  late double _BMI;

  String calculateBIM() {
    _BMI = weight / pow(height/100, 2);
    return _BMI.toStringAsFixed(1);
}

  String getResult () {
    if (_BMI >= 25) {
      return "Overweight";
    }else if (_BMI > 18.5) {
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }

  String getAdvice () {
    if (_BMI >= 25) {
      return "Excercuse more!";
    }else if (_BMI > 18.5) {
      return 'Good! Keep it!';
    }else{
      return 'Eat more!';
    }
  }


}