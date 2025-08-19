import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orbital_dynamics/viewmodels/system_controller.dart';
import 'package:orbital_dynamics/views/solar_system_screen.dart';
void main() {

  Get.put(SystemController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Solar System App',
      home: const SolarSystemScreen(),
    );
  }
}