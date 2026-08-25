class Project {
  final String title;
  final String description;
  final String imagePath;
  final List<String> technologies;
  final String? githubUrl;
  final String? liveUrl;

  const Project({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.technologies,
    this.githubUrl,
    this.liveUrl,
  });
}
