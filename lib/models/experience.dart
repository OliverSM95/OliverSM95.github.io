class Experience {
  final String title;
  final String organization;
  final String period;
  final String location;
  final String description;
  final List<String> highlights;

  // Optional company logo
  final String? logoPath;

  // 0 to n gallery images
  final List<String> imagePaths;

  final List<String> tags;
  final bool isTechnical;
  final String? note;
  final String? detailsRoute;
  final String? detailsLabel;

  const Experience({
    required this.title,
    required this.organization,
    required this.period,
    required this.location,
    required this.description,
    required this.highlights,
    this.logoPath,
    this.imagePaths = const [],
    required this.tags,
    required this.isTechnical,
    this.note,
    this.detailsRoute,
    this.detailsLabel,
  });
}