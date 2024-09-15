import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  final beforeMealController = TextEditingController();
  final afterMealController = TextEditingController();
  var category = ''.obs;

  bool validateInput() {
    double? beforeMeal = double.tryParse(beforeMealController.text);
    double? afterMeal = double.tryParse(afterMealController.text);

    if (beforeMeal != null && afterMeal != null) {
      calculateCategory(beforeMeal, afterMeal);
      return true;
    } else {
      return false;
    }
  }

  void calculateCategory(double beforeMeal, double afterMeal) {
    if (beforeMeal >= 126 && afterMeal >= 200) {
      category.value = "Type 2 Diabetic";
    } else if (beforeMeal >= 100 &&
        beforeMeal <= 125 &&
        afterMeal >= 140 &&
        afterMeal <= 199) {
      category.value = "Prediabetic";
    } else if (beforeMeal >= 70 && beforeMeal <= 100 && afterMeal <= 140) {
      category.value = "Normal";
    }
  }
}
