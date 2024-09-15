import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/controller.dart';

class InfoScreen extends StatelessWidget {
  final Controller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blood Sugar Info'),
      ),
      body: Center(
        child: Obx(() => Text(
              'Your Blood Sugar Level is in the ${controller.category.value} category.',
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            )),
      ),
    );
  }
}
