import '../models/experience.dart';

const List<Experience> technicalExperiences = [
  Experience(
    title: 'Technical Position',
    organization: 'Company / Organization',
    period: 'Most Recent — Date Range',
    description:
        'Responsibilities, technical work, accomplishments, and impact.',
    imagePaths: ['assets/images/technical_experience_1.jpg'],
    tags: ['Technology', 'Application', 'Skill'],
    isTechnical: true,
  ),
  Experience(
    title: 'Technical Position',
    organization: 'Company / Organization',
    period: 'Date Range',
    description: 'Responsibilities, projects completed, tools used, and measurable impact.',
    imagePaths: ['assets/images/technical_experience_2.jpg'],
    tags: ['Technology', 'Application', 'Skill'],
    isTechnical: true,
  ),
];

const List<Experience> nonTechnicalExperiences = [
  Experience(
    title: 'Position',
    organization: 'Company / Organization',
    period: 'Date Range',
    description:
        'Responsibilities, leadership, communication, and accomplishments.',
    imagePaths: ['assets/images/nontechnical_experience_1.jpg'],
    tags: ['Leadership', 'Communication', 'Skill'],
    isTechnical: false,
  ),
  Experience(
    title: 'Position',
    organization: 'Company / Organization',
    period: 'Date Range',
    description:
        'Responsibilities, personal development, and transferable skills.',
    imagePaths: ['assets/images/nontechnical_experience_2.jpg'],
    tags: ['Teamwork', 'Organization', 'Skill'],
    isTechnical: false,
  ),
];
