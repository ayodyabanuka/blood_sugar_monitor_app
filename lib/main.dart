import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/input_screen.dart';
import 'screens/info_screen.dart';

void main() {
  runApp(const BloodSugarMonitorApp());
}

class BloodSugarMonitorApp extends StatelessWidget {
  const BloodSugarMonitorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Blood Sugar Monitor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => InputScreen()),
        GetPage(name: '/info', page: () => InfoScreen()),
      ],
    );
  }
}
