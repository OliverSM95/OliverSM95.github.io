import '../models/project.dart';

const List<Project> projects = [
  Project(
    title: 'Hackathon Winning Project - Paralegal AI Assistant',
    description:
        'Locational based RAG AI Assistant, that answers questions about bylaws in a specific City by webscraping, chunking, and vectorizing data from government bylaw websites. Won MLH prize - best use of Mongo DB Atlas - at Google Development Club Hackathon May 2025.',
    imagePath: 'assets/images/school/hackathonPrize.jpeg',
    technologies: ['Python','Google Gemini API' ,'Mongo DB Atlas', 'RAG AI', 'Flutter', 'Firebase', 'Prompt Engineering'],
  ),
  Project(
    title: 'Open CV Automatic Photobooth',
    description:
        'Highschool project that used OpenCV to detect faces and automatically take a photo when a face was detected. The project was built using Python, C, and OpenCV. The project was a success and was used at school events to take photos of students and faculty.',
    imagePath: 'assets/images/school/OpenCV.png',
    technologies: ['Python', 'C', 'OpenCV', 'Computer Vision', 'Image Processing'],
  ),
  Project(
    title: 'Project Title',
    description: 'Project description, responsibilities, technical approach, and result.',
    imagePath: 'assets/images/project_3.jpg',
    technologies: ['Technology', 'Framework', 'Tool'],
  ),
];
