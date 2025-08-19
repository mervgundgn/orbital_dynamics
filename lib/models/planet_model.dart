import 'package:orbital_dynamics/models/moon_model.dart';

class Planet {
  final String name;
  final String description;
  final String imageAsset;
  final List<Moon> moons;

  Planet({
    required this.name,
    required this.description,
    required this.imageAsset,
    required this.moons,
});
}