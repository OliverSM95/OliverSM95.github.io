import '../models/experience.dart';

const List<Experience> technicalExperiences = [
  Experience(
    title: 'Software Developer Co-op',
    organization: 'Magna Exteriors — Polycon Industries',
    period: 'April 27, 2026 — Present',
    location: 'Guelph, Ontario · On-site',
    note: 'University of Guelph COOP*1000*01 — Work Term I',
    description:
        'Working directly with plant teams to modernize legacy manufacturing processes, build internal software, and deploy production systems used across the facility. My role has given me ownership of projects from initial requirements through development, rollout, and ongoing support.',
    highlights: [
      'Digitized four paper-based business processes, some nearly 20 years old, into production Power Apps and Power Automate solutions using SQL storage, file uploads, automated PDF generation, approval workflows, and notifications.',
      'Built applications designed for plant-wide use, with individual solutions supporting more than 500 users.',
      'Re-engineered the Vendor Request application licensing model from Premium to Standard, reducing annual software costs by approximately \$90K and applying the same approach across four applications for an estimated \$400K in total savings.',
      'Deployed four Ignition-based MES systems to the factory floor, including production KPI displays and truck-part scheduling boards supporting Toyota, BMW, and Mercedes-Benz production lines.',
      'Owned the project lifecycle from requirements gathering and customer demos through development, rollout, training, and support as teams transitioned away from legacy paper processes.',
      'Contributed full-stack features using C#/.NET, Angular, and Tailwind for production and quality applications.',
      'Built Power BI reports for KPI visualization, application logging, and process monitoring.',
    ],
    logoPath:'assets/images/Magna-Logo.png',

    imagePaths: [
      'assets/images/coop/VendorMenu.png',
      'assets/images/coop/NewVendorBlank.png',
      'assets/images/coop/ignition1.png',
      'assets/images/coop/SaveSSR.png',
      'assets/images/coop/getCsUser.png',
      'assets/images/coop/SSRBlank1.png',

    ],
    tags: [
      'Power Apps',
      'Power Automate',
      'C#',
      '.NET',
      'Angular',
      'SQL',
      'Ignition MES',
      'Power BI',
      'Project Ownership',
    ],
    isTechnical: true,
    
    detailsRoute: '/coop',
    detailsLabel: 'View Work Term Report',
  ),

  Experience(
    title: 'Backend Software Developer',
    organization: 'Blue Flamingo Solutions',
    period: 'May 2025 — August 2026',
    location: 'Remote · Contract Part-time',
    description:
        'Worked on the architecture and development of production AI systems for enterprise clients, taking features from early requirements through backend implementation, deployment, and client onboarding while collaborating with an international development team.',
    highlights: [
      'Architected a multi-tenant RAG backend serving three enterprise clients using FastAPI, Supabase vector storage, S3 buckets, and SentenceTransformers semantic search.',
      'Built and maintained the containerized Python backend using FastAPI, Gunicorn, Nginx, and Docker, with deployments through Kinsta and GitHub Actions.',
      'Implemented blue-green indexing so websites and documents could be re-indexed without taking the live knowledge base offline.',
      'Developed document ingestion, chunking, metadata, semantic retrieval, and client-specific knowledge-base infrastructure.',
      'Built a multi-stage agentic lead-capture system that maintained contact information across conversation turns and routed qualified leads through client webhooks.',
      'Performed prompt engineering and context optimization to improve retrieval-driven responses and reduce unnecessary model hallucination.',
      'Built administrative tooling that allowed new clients to be onboarded into the same client-agnostic platform while retaining independent data, configuration, and knowledge bases.',
      'Collaborated with developers across India, Italy, and England and worked directly with company leadership during sprint reviews and feature planning.',
    ],
    logoPath: 'assets/images/blue flamingo.jpg',
    tags: [
      'Python',
      'FastAPI',
      'RAG',
      'Supabase',
      'SentenceTransformers',
      'Docker',
      'Nginx',
      'GitHub Actions',
      'AI',
      'Backend Architecture',
    ],
    isTechnical: true,
  ),

  Experience(
    title: 'Software Quality Assurance Intern',
    organization: 'YScope',
    period: 'July 2023 — September 2023',
    location: 'Toronto, Ontario · Remote',
    description:
        'My first professional software role, where I was introduced to software testing, defect investigation, Linux development environments, and the software development lifecycle.',
    highlights: [
      'Tested YScope\'s CLP compressed log processing software against Ubuntu 23 in an Oracle virtual machine.',
      'Investigated software defects and documented reproducible steps so issues could be reviewed by the development team.',
      'Used static-analysis and development tooling while learning how testing, issue reporting, and development fit together within a professional software workflow.',
      'Gained early experience working independently with an unfamiliar codebase and technical environment.',
    ],
    logoPath:'assets/images/YScope.png',
    tags: [
      'Quality Assurance',
      'Linux',
      'Ubuntu',
      'Virtual Machines',
      'Testing',
      'GitHub',
      'Debugging',
    ],
    isTechnical: true,
  ),

  Experience(
    title: 'Vice President of Technology',
    organization: 'Junior Achievement Company Program — Éssentielle',
    period: 'November 2022 — May 2023',
    location: 'Toronto, Ontario · Hybrid',
    description:
        'Helped build and operate an 18-person student company while leading its technology function. The experience introduced me to leadership, entrepreneurship, cross-functional collaboration, and taking technical ownership within a team.',
    highlights: [
      'Led a three-person technology team and oversaw development of the company\'s Shopify storefront and online sales presence.',
      'Managed digital communication systems and acted as general technical support for teams across marketing, production, and other departments.',
      'Worked alongside the other company executives through the full process of forming, operating, and growing a student-run business.',
      'Received mentorship from six professionals from Scotiabank, BMO, and TD.',
      'Named a finalist for the Leadership in Technology Award.',
    ],
    logoPath: 'assets/images/ja-logo.png',
    tags: [
      'Leadership',
      'Shopify',
      'Entrepreneurship',
      'Team Management',
      'Communication',
      'Technology Strategy',
    ],
    isTechnical: true,
  ),
];

const List<Experience> nonTechnicalExperiences = [
  Experience(
    title: 'Garde Manger / Prep Cook',
    organization: 'Lora Bay Golf',
    period: 'May 2025 — August 2025',
    location: 'Thornbury, Ontario · On-site',
    description:
        'Worked through multiple kitchen roles before taking ownership of the cold station during lunch, dinner, and event service. The experience strengthened my ability to stay organized, communicate under pressure, and maintain consistent standards during long and demanding shifts.',
    highlights: [
      'Managed my own cold station, preparing salads, appetizers, and desserts from a menu developed by chef Mark McEwan.',
      'Prepared and maintained mise en place for high-volume service while working shifts of up to 11 hours.',
      'Coordinated continuously with chefs and line cooks during dinner rushes to keep orders moving accurately and on time.',
      'Supported large events and wedding services where timing, organization, and communication between stations were critical.',
      'Originally joined as a prep cook and dishwasher before progressing into the Garde Manger role.',
    ],
    logoPath:'assets/images/lorabay.jpg',
    tags: [
      'Teamwork',
      'Time Management',
      'Communication',
      'Working Under Pressure',
      'Organization',
      'Self-Management',
    ],
    isTechnical: false,
  ),

  Experience(
    title: 'Direct Sales Representative',
    organization: 'Student Works Management Program',
    period: 'July 2024 — September 2024',
    location: 'Thornbury, Ontario · On-site',
    description:
        'Worked independently in direct sales and lead generation, approaching potential customers through door-to-door marketing and cold outreach.',
    highlights: [
      'Used direct marketing and cold outreach to generate qualified leads and new customers.',
      'Helped generate approximately \$15K–\$17K in revenue over a seven-week period.',
      'Learned to communicate quickly with unfamiliar people, handle rejection, adapt messaging, and remain persistent across long periods of independent work.',
      'Developed confidence and self-discipline through a results-driven role with limited day-to-day supervision.',
    ],
    logoPath:'assets/images/sw.jpg',
    tags: [
      'Sales',
      'Communication',
      'Self-Motivation',
      'Persistence',
      'Customer Relations',
      'Lead Generation',
    ],
    isTechnical: false,
  ),
];