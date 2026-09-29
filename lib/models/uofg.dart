enum UofGSectionType {
  degree,
  clubs,
  classes,
  sports,
}

class UofGImage {
  final String path;
  final String caption;

  const UofGImage({
    required this.path,
    this.caption = '',
  });
}

class UofGSection {
  final UofGSectionType type;
  final String title;
  final String description;
  final List<String> items;

  // Optional section images.
  // Can contain 0, 1, or any number of images.
  final List<UofGImage> images;

  const UofGSection({
    required this.type,
    required this.title,
    required this.description,
    this.items = const [],
    this.images = const [],
  });
}

class CoopWorkTerm {
  final String title;
  final String courseCode;
  final String employer;
  final String role;
  final String period;

  final String? reportRoute;
  final String? reportButtonText;

  const CoopWorkTerm({
    required this.title,
    required this.courseCode,
    required this.employer,
    required this.role,
    required this.period,
    this.reportRoute,
    this.reportButtonText,
  });
}

class UofGData {
  final String eyebrow;
  final String title;
  final String description;

  final List<UofGSection> sections;
  final List<CoopWorkTerm> coopTerms;

  const UofGData({
    required this.eyebrow,
    required this.title,
    required this.description,
    this.sections = const [],
    this.coopTerms = const [],
  });
}