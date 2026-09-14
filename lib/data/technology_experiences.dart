import '../models/technology_experience.dart';

const List<TechnologyExperience> technologyExperiences = [
  TechnologyExperience(
    name: 'Power Apps',
    imagePath: 'assets/images/power-apps.png',
    category: TechnologyCategory.workProject,
    description:
        'Used extensively at Magna to replace legacy paper-based manufacturing processes with production applications supporting 500+ plant users. Built forms, validation, SQL-backed data flows, file handling, role-based interfaces, and application workflows.',
    tags: [
      'Magna',
      '500+ Users',
      'Production',
      'Process Modernization',
    ],
  ),

  TechnologyExperience(
    name: 'Power Automate',
    imagePath: 'assets/images/power-automate.png',
    category: TechnologyCategory.workProject,
    description:
        'Built automated workflows around Magna Power Apps, including approvals, notifications, PDF creation and storage, process logging, and movement of information between users and systems.',
    tags: [
      'Automation',
      'Approvals',
      'PDF Generation',
      'Notifications',
    ],
  ),

  TechnologyExperience(
    name: 'Ignition MES',
    imagePath: 'assets/images/ignition.png',
    category: TechnologyCategory.workProject,
    description:
        'Deployed four manufacturing systems to the factory floor, including live production KPI boards and truck-part scheduling displays supporting automotive production lines.',
    tags: [
      'Manufacturing',
      'MES',
      'Factory Systems',
      'KPI Displays',
    ],
  ),

  TechnologyExperience(
    name: 'C# / .NET',
    imagePath: 'assets/images/dotnet.png',
    category: TechnologyCategory.techStack,
    description:
        'Used professionally at Magna to develop full-stack features for internal plant production and quality applications, working within existing enterprise systems and codebases.',
    tags: [
      'C#',
      '.NET',
      'Enterprise Software',
      'Backend',
    ],
  ),

  TechnologyExperience(
    name: 'Angular',
    imagePath: 'assets/images/Angular.png',
    category: TechnologyCategory.techStack,
    description:
        'Used alongside C#/.NET and Tailwind to build and modify frontend functionality for internal Magna manufacturing applications.',
    tags: [
      'TypeScript',
      'Frontend',
      'Tailwind',
      'Full Stack',
    ],
  ),

  TechnologyExperience(
    name: 'Python / FastAPI',
    imagePath: 'assets/images/Python.png',
    category: TechnologyCategory.techStack,
    description:
        'Used as the core backend stack at Blue Flamingo Solutions. Built APIs, ingestion pipelines, client management systems, RAG retrieval workflows, agentic features, and integrations for production enterprise deployments.',
    tags: [
      'Python',
      'FastAPI',
      'REST APIs',
      'Production Backend',
    ],
  ),

  TechnologyExperience(
    name: 'Supabase',
    imagePath: 'assets/images/supabase.jpg',
    category: TechnologyCategory.techStack,
    description:
        'Designed multi-tenant vector-search infrastructure using client-specific tables, metadata, document storage, and S3 buckets for production RAG systems.',
    tags: [
      'Vector Search',
      'PostgreSQL',
      'Storage',
      'RAG',
    ],
  ),

  TechnologyExperience(
    name: 'SQL',
    imagePath: 'assets/images/sql.jpg',
    category: TechnologyCategory.techStack,
    description:
        'Used for persistent application data at Magna and as part of backend systems where structured storage, querying, logging, and application integration were required.',
    tags: [
      'Databases',
      'Application Data',
      'Queries',
    ],
  ),

  TechnologyExperience(
    name: 'Docker',
    imagePath: 'assets/images/docker.png',
    category: TechnologyCategory.application,
    description:
        'Containerized production backend services at Blue Flamingo and used Docker in academic software projects to create consistent development and testing environments.',
    tags: [
      'Containers',
      'Deployment',
      'Backend Infrastructure',
    ],
  ),

  TechnologyExperience(
    name: 'Power BI',
    imagePath: 'assets/images/power-bi.jpg',
    category: TechnologyCategory.application,
    description:
        'Built reporting and visualization tools at Magna for application activity, process logging, operational KPIs, and manufacturing-related data.',
    tags: [
      'Reporting',
      'KPI Tracking',
      'Visualization',
    ],
  ),

  TechnologyExperience(
    name: 'SentenceTransformers',
    imagePath: 'assets/images/sentence-transformers.png',
    category: TechnologyCategory.application,
    description:
        'Used to generate semantic embeddings for production RAG systems, supporting contextual retrieval across client websites and uploaded documents.',
    tags: [
      'AI',
      'Embeddings',
      'Semantic Search',
      'RAG',
    ],
  ),

  TechnologyExperience(
    name: 'GitHub Actions / CI/CD',
    imagePath: 'assets/images/github-actions.png',
    category: TechnologyCategory.application,
    description:
        'Worked with automated deployment pipelines for production systems, including containerized backend deployments through GitHub Actions and Kinsta.',
    tags: [
      'CI/CD',
      'Deployment',
      'GitHub',
    ],
  ),
];