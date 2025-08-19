import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orbital_dynamics/viewmodels/system_controller.dart';
import 'package:orbital_dynamics/views/planet_detail_screen.dart';

class SolarSystemScreen extends StatelessWidget {
  const SolarSystemScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Orbital Dynamics'),
         backgroundColor: Colors.transparent,
         elevation: 0,
       ),
       body: Stack(
         children: [
           Image.asset('assets/images/background.png',
             fit: BoxFit.cover,
             width: double.infinity,
             height: double.infinity,
           ),
           ListView.builder(
             itemCount: Get.find<SystemController>().planets.length,
             itemBuilder: (context, index) {
               final planet = Get.find<SystemController>().planets[index];

               return InkWell(
                 onTap: () {
                   Get.to(
                           () => const PlanetDetailScreen(),
                   arguments: planet,
                   );
                 },
                 child:
                 Padding(padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Image.asset(
                       planet.imageAsset,
                       width: 50,
                       height: 50,
                     ),
                     const SizedBox(width: 20,),

                     Text(
                       planet.name,
                       style: const TextStyle(
                         fontFamily: 'Exo 2',
                         fontSize: 20,
                         color: Colors.white,
                         fontWeight: FontWeight.w500,
                       ),
                     )
                   ],
                 ),
                 ),
               );
             }
           )

         ],

       ),

    );
  }
}