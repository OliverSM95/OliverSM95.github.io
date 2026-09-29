import '../models/uofg.dart';

const UofGData uofgData = UofGData(
  // ===========================================================================
  // PAGE HEADER
  // ===========================================================================

  eyebrow: 'UNIVERSITY OF GUELPH',

  title: 'Academic Life',

  description:
      'Degree, academics, clubs, university involvement, athletics, and my co-op experience.',

  // ===========================================================================
  // MAIN SECTIONS
  //
  // Add/remove items freely.
  // The UI will automatically update.
  // ===========================================================================

  sections: [
    UofGSection(
      type: UofGSectionType.degree,
      title: 'Degree',

      // -----------------------------------------------------------------------
      // Put your degree overview here.
      // -----------------------------------------------------------------------

      description:
          'B.Computing (Honours), Software Engineering Co-op at the University of Guelph.',

      items: [
        // Replace/add information here.
        'Software Engineering Co-op',
        'Minor: Entrepreneurship',
        //'Area of Emphasis: Artificial Intelligence',
        'Expected graduation: April 2029',
      ],
    ),

    UofGSection(
      type: UofGSectionType.clubs,
      title: 'Clubs & Involvement',

      // -----------------------------------------------------------------------
      // General club / university involvement overview.
      // -----------------------------------------------------------------------

      description:
          'Clubs, organizations, leadership positions, and other involvement at the University of Guelph.',

      items: [
        // Add each club / activity as another string.
        'Google Developer Club — Marketing Lead',
        'ADD ANOTHER CLUB / ACTIVITY',
      ],
    ),

    UofGSection(
      type: UofGSectionType.classes,
      title: 'Relevant Classes',

      description:
          'Courses that have contributed most directly to my development in software engineering and computer science.',

      items: [
        // Add/remove courses here.
        'CIS*2430 — Object-Oriented Programming',
        'CIS*2750 — Software Systems Development and Integration',
        'CIS*3250 — Software Design III',
        //'ADD COURSE',
      ],
      images: [
    UofGImage(
      path: 'assets/images/uofg/gdg_team.jpg',
      caption: 'Google Developer Club team.',
    ),
    UofGImage(
      path: 'assets/images/uofg/gdg_event.jpg',
      caption: 'Club event at the University of Guelph.',
    ),
  ],
    ),

    UofGSection(
      type: UofGSectionType.sports,
      title: 'Sports',

      description:
          'Athletics, intramural sports, and recreational activities during my time at Guelph.',

      items: [
        // Add sports / teams / achievements here.
        'Intermural Recreational Soccer Team — September 2025 - April 2026',
        'Rock Climbing — September 2024 - April 2026',
        'Squash — January 2026 - April 2026',
      ],
      images: [
    UofGImage(
      path: 'assets/images/school/soccer1.jpeg',
      caption: 'Intermural Recreational soccer team first Semester Second year.',
    ),
    UofGImage(
      path: 'assets/images/school/soccer2.jpeg',
      caption: 'Intermural Recreational soccer team second Semester Second year.',
    ),
    UofGImage(
      path: 'assets/images/school/Squash.jpeg',
      caption: 'Playing Squash.',
    ),
    UofGImage(
      path: 'assets/images/school/Climbing.jpeg',
      caption: 'Rock Climbing / Bouldering',
    ),
  ],
    ),
  ],

  // ===========================================================================
  // CO-OP
  //
  // Add one CoopWorkTerm for every work term.
  //
  // Work Term II later becomes another item in this list.
  // ===========================================================================

  coopTerms: [
    CoopWorkTerm(
      title: 'Work Term I',
      courseCode: 'COOP*1000*01',
      employer: 'Magna Exteriors — Polycon Industries',
      role: 'Software Developer Co-op',
      period: 'April 27, 2026 — Present',

      // This makes the View Work Term Report button appear.
      reportRoute: '/coop',
      reportButtonText: 'View Work Term Report',
    ),

    // -------------------------------------------------------------------------
    // Future example:
    //
    // CoopWorkTerm(
    //   title: 'Work Term II',
    //   courseCode: 'COOP*2000',
    //   employer: 'Employer Name',
    //   role: 'Job Title',
    //   period: 'January 2027 — April 2027',
    //   reportRoute: '/coop-2',
    //   reportButtonText: 'View Work Term Report',
    // ),
    // -------------------------------------------------------------------------
  ],
);