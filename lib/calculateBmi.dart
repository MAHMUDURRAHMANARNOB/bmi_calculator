import 'dart:math';

class CalculateBMI {
  final int age;
  final int height;
  final int weight;

  CalculateBMI({required this.age, required this.height, required this.weight});

  late double _bmi;

  String calculateBmi() {
    if (age > 18 && age < 65) {
      _bmi = weight / pow(height / 100, 2);

      return _bmi.toStringAsFixed(2);
    } else {
      return "You are not eligible for BMI calculation";
    }
  }

  String getResult() {
    if (_bmi > 24.9) {
      return 'OVERWEIGHT.';
    } else if (_bmi < 18.5) {
      return 'UNDERWEIGHT';
    } else if (_bmi > 18 && _bmi < 25) {
      return 'HEALTHY';
    } else if (_bmi > 29) {
      return 'OBESE';
    } else {
      return "ERROR";
    }
  }

  String getRange() {
    if (_bmi > 24.9) {
      return '24.9 - 29 kg/m2';
    } else if (_bmi <= 18.4) {
      return '0 - 18.4 kg/m2';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return '18.5 - 24.9 kg/m2';
    } else if (_bmi > 29) {
      return 'Above 29 kg/m2';
    } else {
      return "ERROR";
    }
  }

  String getSuggestion() {
    if (_bmi > 24.9 && _bmi < 29) {
      return 'You are Over-Weight. Do some exercise and maintain a healthy diet.';
    } else if (_bmi < 18.5) {
      return 'You are Under-Weight. Do some exercise and maintain a healthy diet.';
    } else if (_bmi > 18 && _bmi < 25) {
      return 'You have a perfect body weight. Take care of your great body';
    } else if (_bmi >= 29) {
      return 'Consult a Doctor right Away';
    } else {
      return "great";
    }
  }
}
