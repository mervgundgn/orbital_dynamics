class Moon {
  final String name;
  final String description;
  final String imageAsset;
  final String? impactTitle;
  final String? impactDescription;


  Moon({
    required this.name,
    required this.description,
    required this.imageAsset,
    this.impactTitle,
    this.impactDescription,
});
}