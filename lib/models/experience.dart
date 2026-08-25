class Experience {
  final String title;
  final String organization;
  final String period;
  final String description;
  final List<String> imagePaths;
  final List<String> tags;
  final bool isTechnical;

  const Experience({
    required this.title,
    required this.organization,
    required this.period,
    required this.description,
    required this.imagePaths,
    required this.tags,
    required this.isTechnical,
  });
}
