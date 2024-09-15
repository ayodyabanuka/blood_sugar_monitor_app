import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/controller.dart';

class InputScreen extends StatelessWidget {
  final Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blood Sugar Monitor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller.beforeMealController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Before Meal Blood Sugar (mg/dL)',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: controller.afterMealController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'After Meal Blood Sugar (mg/dL)',
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                if (controller.validateInput()) {
                  Get.toNamed('/info');
                } else {
                  Get.snackbar(
                    'Invalid Input',
                    'Please enter valid numbers for both fields.',
                    snackPosition: SnackPosition.BOTTOM,
                  );
                }
              },
              child: const Text('Show Info'),
            ),
          ],
        ),
      ),
    );
  }
}
