class CoopReportImage {
  final String path;
  final String caption;

  const CoopReportImage({required this.path, this.caption = ''});
}

class CoopGoal {
  final String number;
  final String title;

  // What you intended to learn/accomplish.
  final String goal;

  final String type;

  final String actionPlan;

  final String measureOfSuccess;

  // What actually happened during the work term.
  final String outcome;

  // Your reflection on the experience.
  final String reflection;

  // Optional images relating specifically to this goal.
  final List<CoopReportImage> images;

  const CoopGoal({
    required this.number,
    required this.title,
    required this.type,
    required this.goal,
    required this.actionPlan,
    required this.measureOfSuccess,
    required this.outcome,
    required this.reflection,
    this.images = const [],
  });
}

class CoopReport {
  // ---------------------------------------------------------------------------
  // HEADER INFORMATION
  // ---------------------------------------------------------------------------

  final String workTerm;
  final String courseCode;
  final String role;
  final String employer;
  final String dates;
  final String location;
  final String university;

  // Optional large image at the top of the report.
  // Set to null if you do not want one.
  final CoopReportImage? heroImage;

  // ---------------------------------------------------------------------------
  // WRITTEN REPORT SECTIONS
  //
  // Each section uses List<String> instead of one giant String.
  // Each item in the list becomes its own paragraph.
  // ---------------------------------------------------------------------------

  final List<String> introduction;
  final List<CoopReportImage> introductionImages;

  final List<String> employerInformation;
  final List<CoopReportImage> employerImages;

  final List<CoopGoal> goals;

  final List<String> jobDescription;
  final List<CoopReportImage> jobImages;

  final List<String> workProjects;
  final List<CoopReportImage> workProjectImages;

  final List<String> whatILearned;
  final List<CoopReportImage> learningImages;

  final List<String> conclusion;
  final List<CoopReportImage> conclusionImages;

  final List<String> acknowledgments;

  const CoopReport({
    required this.workTerm,
    required this.courseCode,
    required this.role,
    required this.employer,
    required this.dates,
    required this.location,
    required this.university,
    this.heroImage,
    this.introduction = const [],
    this.introductionImages = const [],
    this.employerInformation = const [],
    this.employerImages = const [],
    this.goals = const [],
    this.jobDescription = const [],
    this.jobImages = const [],
    this.workProjects = const [],
    this.workProjectImages = const [],
    this.whatILearned = const [],
    this.learningImages = const [],
    this.conclusion = const [],
    this.conclusionImages = const [],
    this.acknowledgments = const [],
  });
}
