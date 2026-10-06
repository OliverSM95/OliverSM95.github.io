class AppConstants {
  static const String name = 'Oliver Simm';

  static const String githubUrl = 'https://github.com/OliverSM95';

  static const String linkedinUrl =
      'https://www.linkedin.com/in/oliver-s-b60b54231';

  static const String instagramUrl = 'https://www.instagram.com/oliver_sm.06';

  static const String emailUrl = 'mailto:olisimm2006@gmail.com';

  static const String headshotPath = 'assets/images/headshot.jpg';

  // Web-sized derivatives; dimensions reserve space before decoding completes.
  static const List<({String path, double aspectRatio})> aboutGallery = [
    (path: 'assets/images/gallery/altaf.webp', aspectRatio: 900 / 1200),
    (path: 'assets/images/gallery/elvis.webp', aspectRatio: 900 / 1200),
    (path: 'assets/images/gallery/puppy-yoga.webp', aspectRatio: 900 / 1200),
    (path: 'assets/images/gallery/christmas.webp', aspectRatio: 1200 / 799),
    (path: 'assets/images/gallery/gdg-team.webp', aspectRatio: 1200 / 900),
    (path: 'assets/images/gallery/polycon-golf.webp', aspectRatio: 1200 / 799),
  ];

  static const String resumeAssetPath =
      'assets/documents/Oliver_Simm_Resume_2026-2.pdf';

  // Flutter adds assets/ before the entire asset key in release builds.
  // Keep this relative so the document's <base href> also works on project Pages.
  static const String resumeWebPath = 'assets/$resumeAssetPath';
}
