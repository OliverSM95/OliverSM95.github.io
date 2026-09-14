enum TechnologyCategory {
  workProject,
  techStack,
  application,
}

class TechnologyExperience {
  final String name;
  final String imagePath;
  final String description;
  final TechnologyCategory category;
  final List<String> tags;

  const TechnologyExperience({
    required this.name,
    required this.imagePath,
    required this.description,
    required this.category,
    this.tags = const [],
  });
}