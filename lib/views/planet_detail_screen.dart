import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:orbital_dynamics/models/planet_model.dart';
import 'package:orbital_dynamics/views/moon_detail_screen.dart';

class PlanetDetailScreen extends StatelessWidget {
  const PlanetDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Planet planet = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(planet.name),
      ) ,
      body: Stack(
        children: [
          Image.asset(planet.imageAsset,
             fit: BoxFit.cover,
             width: double.infinity,
             height: double.infinity,
          ),

          SingleChildScrollView(
            child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(planet.imageAsset,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.contain,),

                const SizedBox(height: 24,),

                Text(planet.description,
                  style: const TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 32,),

                Column(
                  children: planet.moons.map((moon) {
                    return InkWell(
                      onTap: () {
                        Get.to(
                            () => const MoonDetailScreen(),
                          arguments: moon,

                        );
                      },

                    );
                  }).toList(),
                )



              ],
            ),
          ),
          ),
        ],
      ),
    );
  }
}