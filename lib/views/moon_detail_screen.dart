import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orbital_dynamics/models/moon_model.dart';
import 'package:orbital_dynamics/models/planet_model.dart';


class MoonDetailScreen extends StatelessWidget {

  const MoonDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final moon = Get.arguments;

    return Scaffold (
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(moon.name),
      ),
      
      body: Stack(
        children: [
          Image.asset(moon.imageAsset,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          ),

          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    moon.imageAsset,
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    moon.description,
                    style: const TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 32),
                  const Text(
                    'Uydular',
                    style: TextStyle(
                      fontFamily: 'Exo 2',
                      fontSize: 22.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Column(
                    children: moon.moons.map((moon) {
                      return InkWell(
                        onTap: () {
                          Get.to(
                                () => const MoonDetailScreen(),
                            arguments: moon,
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                moon.name,
                                style: const TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              const Icon(
                                Icons.chevron_right,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}