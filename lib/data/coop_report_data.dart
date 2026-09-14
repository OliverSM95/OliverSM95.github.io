import '../models/coop_report.dart';

const CoopReport workTermOneReport = CoopReport(
  // ===========================================================================
  // HEADER
  // ===========================================================================

  workTerm: 'Work Term I',
  courseCode: 'COOP*1000*01',

  role: 'Software Developer Co-op',
  employer: 'Magna Exteriors — Polycon Industries',

  dates: 'April 27, 2026 — Present',
  location: 'Guelph, Ontario',
  university: 'University of Guelph',

  // ===========================================================================
  // HERO IMAGE
  //
  // Uncomment this when you have an appropriate image.
  //
  // heroImage: CoopReportImage(
  //   path: 'assets/images/coop/hero.jpg',
  //   caption: 'Caption describing the image.',
  // ),
  // ===========================================================================
  heroImage: null,

  // ===========================================================================
  // INTRODUCTION
  //
  // Put each paragraph in its own string.
  // Add/remove paragraphs as needed.
  // ===========================================================================
  introduction: [
    // '''
    // FIRST INTRODUCTION PARAGRAPH.
    // ''',
    '''
    From April 27 to August 28, 2026, I completed my first co-op work term as a Software Developer Intern at Magna International – Polycon Industries in Guelph, Ontario. Throughout the term, I led and contributed to several software projects, including modernizing over 20-year-old factory systems, digitizing paper-based processes, developing full-stack features for existing applications, and creating MES dashboards for plant operations. This website highlights the technical, project management, and communication skills I developed while applying software engineering in a large-scale manufacturing environment.
    ''',
    // '''
    // SECOND INTRODUCTION PARAGRAPH IF NEEDED.
    // ''',
  ],

  // Optional images underneath the Introduction.
  introductionImages: [
    // CoopReportImage(
    //   path: 'assets/images/coop/introduction_1.jpg',
    //   caption: 'Image caption.',
    // ),
  ],

  // ===========================================================================
  // ABOUT THE EMPLOYER
  // ===========================================================================
  employerInformation: [
    // '''
    // EMPLOYER DESCRIPTION / BACKGROUND PARAGRAPH.
    // ''',
    '''
Polycon Industries is an automotive manufacturing plant in Guelph, Ontario, operating under Magna International’s Exteriors division. Polycon employs over 1,500 people and is led by General Manager Paul Blackburn. Its primary manufacturing process is plastic injection moulding, followed by painting and assembly. The plant produces automotive components such as painted fascias, energy absorbers, exterior trim, liftgates, and other plastic parts.

I worked in Polycon’s IT department as a Software Developer Intern. Computing science is important to Polycon because software, databases, networks, and automated systems are used to support production and business operations throughout the plant. My role focused mainly on developing and improving internal software tools and processes.

Some interesting facts about Polycon are that the plant has been part of Magna for approximately 35 years as of 2026 and originally focused mainly on bumpers and fascias before expanding into smaller, more complex automotive parts. At peak production, the facility can reportedly use up to half of the City of Guelph’s electrical power. Magna itself is a Canadian-founded company with more than 150,000 employees worldwide.

    '''

    // '''
    // ADDITIONAL EMPLOYER INFORMATION.
    // ''',
  ],

  employerImages: [
    // CoopReportImage(
    //   path: 'assets/images/coop/employer_1.jpg',
    //   caption: 'Image caption.',
    // ),

    // Add as many images as you want.
  ],

  // ===========================================================================
  // GOALS & LEARNING OUTCOMES
  //
  // You can have any number of goals.
  //
  // Each goal has:
  //   - title
  //   - goal
  //   - outcome
  //   - reflection
  //   - optional images
  // ===========================================================================
  goals: [
    CoopGoal(
      number: '01',

      // Short descriptive title for goal 1.
      title: '''Project Onwership''',

      type:''' 	
PROFESSIONAL & ETHICAL BEHAVIOUR - Leadership ''',

      // What did you want to accomplish or learn?
      goal: '''
By week 14, I want to take full ownership of at least one decently scoped project. This includes leading the requirements-gathering session, setting the delivery timeline, completing development with supervisor guidance, and delivering a final handoff (with documentation and a walkthrough) to the end users.
      ''',

     actionPlan:'''- By week 5, identify a suitable project with my supervisor and agree on scope, timeline, and success criteria.
-Lead or co-lead a requirements gathering session and produce a written summary of the requirements.
-Hold at least 2 check-ins with my supervisor during development to ensure the project stays on track.
-Complete documentation and a user-acceptance test with at least one end user before delivery.
-Deliver a final walkthrough to the end users by week 14''' ,
    measureOfSuccess:''' 	
At least one project is fully delivered to end users by week 14, with documentation and a completed walkthrough.
''' ,

      // What actually happened?
      // Were you successful?
      outcome: '''
      My first major project at Polycon was the digitization of the Vendor Request process, which had been paper-based for nearly 20 years. I took ownership of the project from start to finish, leading requirements-gathering sessions with Purchasing and Accounting, setting the development timeline, building and testing the application, and completing the final rollout with guidance from my supervisor. After deployment, I continued working closely with the main stakeholders to gather feedback, make improvements, and find new process efficiencies. The project was well received and is now actively used by over 500 employees across the plant, making it a strong example of the level of ownership I wanted to achieve during my work term.''',

      // What did you learn from pursuing this goal?
      // How will it affect your future work?
      reflection: '''
      Taking ownership of the Vendor Request project gave me a much better understanding of what it actually means to lead a software project rather than simply being assigned development tasks. I had to communicate with different departments such as purchasing and accounting, turn their requirements into a working application, manage changes throughout development, and make sure the final product actually worked for the people using it. I also became much more comfortable running meetings, demonstrating my work, and making decisions independently instead of relying on my supervisor for every step.

The experience also helped me on later projects, especially the Special Shipment Request application, where I had to work directly with users and respond quickly to changing requirements after deployment. Overall, this goal gave me much more confidence taking responsibility for a project from beginning to end and showed me areas, such as requirements gathering and user feedback, that can have just as much impact on a project's success as the actual development work.
''',

      images: [
        // CoopReportImage(
        //   path: 'assets/images/coop/goal_1.jpg',
        //   caption: 'Image related to this goal.',
        // ),
      ],
    ),

    CoopGoal(
      number: '02',

      // Short descriptive title for goal 1.
      title: '''Weekly Work Log''',

      type:''' 	
PROFESSIONAL & ETHICAL BEHAVIOUR - Personal Organization/Time Management ''',

      // What did you want to accomplish or learn?
      goal: '''From week 1 through the end of my work term, I will maintain a weekly work log documenting all completed tasks, the tools and approaches used to complete them, and any new skills or knowledge gained. The log will be updated every Friday before the end of the workday and will serve as a running record of my technical and professional growth throughout the term. By the end of the work term, the log will contain at least 16 weekly entries and will be used to support my mid-term and final co-op evaluations. ''',

     actionPlan:'''- Set up a log document in week 1 (Work Notebook) with pages for task, approach/tools used, and learnings.
- Every Day, spend 5-10 minutes filling in the day's entries before leaving.
- Use the log as a reference when completing mid-term and final co-op reflection forms. ''' ,
    measureOfSuccess:''' The log contains a minimum of 16 completed weekly entries by the end of the work term.	''' ,

      // What actually happened?
      // Were you successful?
      outcome: '''
      I was successful in maintaining a weekly work log throughout my work term. I consistently updated throughout each workday, documenting completed tasks, tools and approaches used, and new skills or knowledge gained. By the end of the term, the log contained 16 comprehensive entries, which proved invaluable for my mid-term and final co-op evaluations. The log not only served as a record of my technical and professional growth but also helped me reflect on my progress and identify areas for improvement.
      ''',

      // What did you learn from pursuing this goal?
      // How will it affect your future work?
      reflection: '''
        Maintaining a weekly work log was an invaluable practice that enhanced my organizational skills and self-awareness. It allowed me to track my progress, reflect on my learning experiences, and identify areas for improvement. This habit of consistent documentation will be beneficial in future roles, as it promotes accountability and continuous learning. I plan to continue this practice in my future work, as it provides a structured way to evaluate performance and growth over time.
      ''',

      images: [
        // CoopReportImage(
        //   path: 'assets/images/coop/goal_1.jpg',
        //   caption: 'Image related to this goal.',
        // ),
      ],
    ),
    CoopGoal(
      number: '03',

      // Short descriptive title for goal 1.
      title: '''Power BI Report Development ''',

      type:''' 		
LITERACY - Technological Literacy ''',

      // What did you want to accomplish or learn?
      goal: '''By the end of week 4, independently design, build, and publish at least 2 fully functional Power BI reports connected to live SQL Server data sources. Each report will include appropriate DAX measures/Calculated Columns and at least 3 meaningful visualizations that are actively reviewed by production or quality staff during regular operations, as well as relevant slicers and cards.''',

     actionPlan:'''- In week 1, review existing Power BI reports and SQL schemas with the senior developer to understand current standards and available data.
- By week 2, meet with production or quality staff to confirm what metrics and KPIs each report should display.
- In week 2, write and test the required SQL queries, validating outputs against known data before connecting to Power BI.
- In weeks 3-4, build each report in Power BI Desktop, adding DAX measures, calculated columns, visualizations, slicers, and cards.
- Before publishing, have the supervisor review each report for accuracy and usability.
- Publish both reports by the end of week 4 and confirm with at least one production or quality staff member that they are actively using them''' ,
    measureOfSuccess:'''Two Power BI reports are published and actively reviewed by production or quality staff by the end of week 4''' ,

      // What actually happened?
      // Were you successful?
      outcome: '''
      Over the first 4 months of my work term, I successfully designed, built, and published five fully functional Power BI reports connected to live SQL Server data sources. Each report included appropriate DAX measures, calculated columns, and at least three meaningful visualizations that were actively reviewed by production and quality staff during regular operations. I also implemented relevant slicers and cards to enhance the usability of the reports. The successful completion of these reports demonstrated my ability to independently manage the entire report development process, from requirements gathering to deployment.
      In additon, 2 of these reports were directly connected to my Vendor Request App and allowed for automatic tracking of vendor requests as it was submitted and approved. This allowed for a more efficient and accurate tracking of vendor requests, which was previously done manually.
      ''',

      // What did you learn from pursuing this goal?
      // How will it affect your future work?
      reflection: '''
      Pursuing this goal significantly enhanced my proficiency in Power BI and SQL, as well as my ability to translate business requirements into actionable data insights. I learned the importance of understanding end-user needs and how to design reports that are both informative and user-friendly. This experience has strengthened my analytical skills and will positively impact my future work by enabling me to create more effective data-driven solutions, improve decision-making processes, and contribute to the overall efficiency of any organization I work with.
      ''',

      images: [
        // CoopReportImage(
        //   path: 'assets/images/coop/goal_1.jpg',
        //   caption: 'Image related to this goal.',
        // ),
      ],
    ),
    CoopGoal(
      number: '04',

      // Short descriptive title for goal 1.
      title: '''SQL Proficiency''',

      type:''' 	
LITERACY - Technological Literacy ''',

      // What did you want to accomplish or learn?
      goal: '''By the end of week 8, I will improve my SQL proficiency by independently writing queries of increasing complexity to support reporting and application needs at Polycon. This includes writing queries involving joins across multiple tables, aggregations, subqueries, and filtered views used in at least 2 live Power BI reports or application data sources. Progress will be measured by my supervisor's confidence in assigning me SQL tasks with minimal guidance by the midpoint of the term. ''',

     actionPlan:'''- In week 1, assess my current SQL skill level by reviewing the existing database schema and attempting to write basic queries against it.
- Read up on W3Schools SQL and read books on SQL,  covering joins, aggregations, and subqueries by week 3.
- Apply concepts directly to real work tasks by prioritizing SQL writing over asking for pre-built queries when possible.
- By week 6, write at least 2 multi-table queries used in live reports without assistance.
- At the week 8 mid-term check-in, ask my supervisor for feedback on my SQL growth and identify any remaining gaps to focus on in the second half of the term. ''' ,
    measureOfSuccess:''' 	

By week 8, my supervisor is confident assigning me multi-table SQL queries with minimal guidance.
''' ,

      // What actually happened?
      // Were you successful?
      outcome: '''
      By the four month mark of my term, my supervisor AJ was confident assigning me tasks that involved SQL but cushioned that due to the critical nature of how SQL impacts the factory to still run all SQL decision making by him, such as table creations, alters, drops etc. This experience gave me a much stronger understanding of database structures and improved my ability to retrieve and manipulate data using SQL. One important concept I developed was database normalization, where tables are structured to reduce repeated data and improve data integrity. I plan to build on my understanding of this concept in my fourth-year database course.
''',

      // What did you learn from pursuing this goal?
      // How will it affect your future work?
      reflection: '''
      Pursuing this goal significantly improved my SQL skills and made me more comfortable working with larger databases and more complex queries. I also gained a better understanding of how SQL is used in industry for applications, reporting, and other data needs. This experience will give me a strong advantage when applying to future software development roles, as SQL is one of the most widely used technologies in modern software development. Finally, I plan to continue building on these skills as I gain more experience with SQL and database design through future projects and roles.
    ''',

      images: [
        // CoopReportImage(
        //   path: 'assets/images/coop/goal_1.jpg',
        //   caption: 'Image related to this goal.',
        // ),
      ],
    ),
    CoopGoal(
      number: '05',

      // Short descriptive title for goal 1.
      title: '''MES Screen Development ''',

      type:'''  	
LITERACY - Technological Literacy  ''',

      // What did you want to accomplish or learn?
      goal: ''' By the end of week 10, I will develop a working understanding of Ignition by completing at least 2 functional MES screens or components from scratch. This includes configuring tags, binding data to display components, and connecting to a live data source. Progress will be measured by my supervisor's ability to assign me Ignition tasks with minimal guidance by week 10.''',

     actionPlan:'''- In weeks 1-2, complete the free Ignition Core Certification training on Inductive University to build a foundational understanding of the platform.
- In weeks 2-3, review existing Ignition projects at Polycon with a senior developer to understand how screens, tags, and data sources are structured internally.
- Starting week 4, take on small Ignition tasks independently, such as modifying existing screens or adding components, before building anything new.
- By week 8, begin designing and building at least one original MES screen or component, checking in with my supervisor at key stages.
- By week 10, deliver the completed screen for review and ask for feedback on areas to improve. ''' ,
    measureOfSuccess:'''  	

At least one original MES screen or component is completed, reviewed, and approved by my supervisor by week 10.
	''' ,

      // What actually happened?
      // Were you successful?
      outcome: '''
During my first four months at Polycon, I was introduced to their Manufacturing Execution System (MES) through a software platform called Ignition. Ignition is a powerful industrial design platform that allows users and software systems to directly interact with factory programmable logic controller (PLC) tags to monitor, control, and respond to machine behaviour.

During this period, I completed three MES screens: one KPI dashboard displaying yield and scrap totals, and two similar truck-scheduling screens designed to inform drivers of the part currently running on the line and the part scheduled next. These screens were intended to reduce communication barriers between the plant and drivers by making production information more readily available. I was able to complete all three screens with minimal guidance from my supervisor, and they were well received by the production team.

      ''',

      // What did you learn from pursuing this goal?
      // How will it affect your future work?
      reflection: '''This experience gave me a much stronger understanding of how MES software fits into the manufacturing ecosystem and how it can benefit communication, factory and production efficiency. Completing the three screens helped me become more confident working independently in unfamiliar software platforms and in developing software that directly integrates with factory machines. I also gained valuable experience working with Ignition and PLC tags, which was a new area for me at the beginning of the term. By the end of my first four months, I felt much more comfortable developing MES applications and understanding how they fit into the larger production process.''',

      images: [
        // CoopReportImage(
        //   path: 'assets/images/coop/goal_1.jpg',
        //   caption: 'Image related to this goal.',
        // ),
      ],
    ),
    /*
    CoopGoal(
      number: '0n',

      // Short descriptive title for goal 1.
      title: ''' ''',

      type:'''  ''',

      // What did you want to accomplish or learn?
      goal: ''' ''',

     actionPlan:''' ''' ,
    measureOfSuccess:''' 	''' ,

      // What actually happened?
      // Were you successful?
      outcome: '''
      ''',

      // What did you learn from pursuing this goal?
      // How will it affect your future work?
      reflection: '''
      ''',

      images: [
        // CoopReportImage(
        //   path: 'assets/images/coop/goal_1.jpg',
        //   caption: 'Image related to this goal.',
        // ),
      ],
    ),*/

    // Add Goal 04, 05, etc. here if needed.
  ],

  // ===========================================================================
  // JOB DESCRIPTION
  //
  // Explain the nature of your role and responsibilities here.
  // ===========================================================================
  jobDescription: [
    '''
    The IT team at Polycon Industries had not hired co-op students in over 10 years, so being one of two students selected for the role gave me a strong sense of pride and excitement. As a Software Developer Co-op Student, my primary responsibility was to help reduce a large backlog of IT development requests by designing and implementing software solutions for departments across the plant. My work included building Power Apps for Shipping, Accounting, Purchasing, MRO, and Painting; developing Manufacturing Execution System (MES) applications for the factory; creating Power BI reports; and contributing to full-stack applications using C#/.NET and Angular.
''',
'''
The role required a strong foundation in SQL, object-oriented programming, MVC architecture, C-family programming languages, and full-stack application development. Several of these skills were introduced through my university coursework. CIS*2750 – Software Systems Development and Integration gave me experience with MVC architecture and structuring larger software systems, while CIS*2430 – Object-Oriented Programming strengthened my understanding of abstraction, modularity, and reusable code. CIS*3250 – Software Design III was particularly valuable because it introduced me to how software projects are planned, tested, maintained, and developed collaboratively. It also helped prepare me to work cross-functionally with non-technical stakeholders.
''',
'''
Many of the most important skills, however, were developed on the job. Through projects such as digitizing the Vendor Request and Special Shipment processes, I learned how to lead requirements-gathering sessions, translate business needs into technical solutions, manage changing requirements, and communicate across multiple departments. The Vendor Request project required close collaboration with Purchasing and Accounting, while the Special Shipment application involved Engineering, Shipping, and several other groups. These projects taught me how software development operates in a real production environment, where technical decisions must account for business processes, users, maintainability, and changing operational needs.
''',
  ],

  jobImages: [
    // CoopReportImage(
    //   path: 'assets/images/coop/job_1.jpg',
    //   caption: 'Image caption.',
    // ),
    CoopReportImage(
      path: 'assets/images/teamphoto.jpeg',
      caption: 'Polycon IT Team.',
    ),
    CoopReportImage(
      path: 'assets/images/coop/polycon-golf.jpg',
      caption: 'Polycon Golf Tournament.',
    ),
  ],

  // ===========================================================================
  // WORK & PROJECTS
  //
  // Use this for discussion of specific projects or interesting work.
  //
  // Each string becomes a separate paragraph.
  // ===========================================================================
  workProjects: [
    // '''
    // PROJECT / WORK PARAGRAPH 1.
    // ''',
    '''
    The Vendor Request App was my first major project while working at Polycon. The goal of the project was to digitize the factory\’s over 20-year-old paper Vendor Request process. The scope consisted of digitizing four forms, automating two Excel tracking processes, allowing users to update existing forms, and implementing automatic approval routing. The four forms included the New Vendor Request Form, EFT/ACH Authorization Form, Vendor Maintenance Update Information Form, and Supplier Banking Information Form. Throughout this project, I worked closely with the main stakeholders of these forms, primarily Purchasing and Accounting.

When I was first given the project brief, I was told that the original requirements-gathering session had taken place four months earlier and had lasted around ten minutes. In addition, I was given a series of papers roughly outlining the process for one of the four major forms, copies of the remaining three forms, and two additional forms related to a completely different project, which at the time I believed were extensions of the main project. Since this was also my first time using Power Apps and Power Automate, I spent the first few weeks experimenting with the software and building the UI for one of the forms. During this time, I became familiar with what Power Automate could do, including SQL logging, sending emails, and automating different parts of the approval process. Over the next month, I completed the UI for the remaining forms, built an archive where users could filter and search for previous forms, allowed users to edit forms, added viewership restrictions with the ability to append new viewers, and added the option for users to set backup approvers if they were away.

When I was ready to begin testing, I encountered two major setbacks. The first happened when Ali from Accounting questioned the approval hierarchy I had created for one of the forms. When I initially built the logic, there had been almost no information in the brief explaining how the approval process worked, so I had filled in the gaps based on my own assumptions. Ali clarified the actual process, and what I had originally built as a two-step approval process was actually supposed to be six steps. After confirming the full process with both Purchasing and Accounting, I spent around one to two weeks refactoring the form so that it properly followed the existing paper process. This setback taught me a valuable lesson: when requirements are unclear, it is much better to spend extra time early in the project asking questions and clarifying the process rather than making assumptions that create more technical debt later.

The second major setback also came during testing. On my very first approval stage, the Purchasing Administrative Assistant was required to pay for Power Apps Premium in order to use the application because of the way the app was connecting to SQL. This quickly became a major issue and, for a short time, made me think that nearly three months of work may have been unusable. With approximately 500 potential users, requiring everyone to have a Premium license could have cost close to \$100,000 per year.

My first approach to reducing this cost was identifying that around 90% of users only needed to submit requests. I created a separate free application that was only used for sending in requests, meaning that only the primary stakeholders would need Premium licenses. This reduced the estimated licensing cost by roughly 95%, down to around \$4,000 per year. Even though this made the project much more realistic, I still was not happy with the cost and continued looking for another solution.

I researched Microsoft\’s multiplexing rules to better understand what I was allowed to do without violating their licensing terms by using third-party workarounds to reduce the number of licensed users. I also searched through forums, AI tools, YouTube videos, and other resources but could not find a clear solution. Eventually, I decided to test a theory where I removed all direct SQL connections from the Power App and moved them into the backend, where only the service account hosting the application would need access to SQL.

At first, this still did not work because users opening the app had to agree to run the backend connections, which meant they were still technically using the Premium SQL features. In a final attempt to solve the issue, I noticed that the Power Automate flows had a setting called “Run Only Users,” where you could choose which account was responsible for running an action such as SQL or email. These were all set to “run user,” so I changed them to use the service account instead. After changing each flow, I checked the app again and saw that it had switched from Premium to Standard, meaning only the service account required the Premium license. This discovery ultimately saved the project and became the same approach I used in future Power Apps projects.

As of September, the application is live for approximately 500 plant users, and I continue to work closely with Purchasing and Accounting to identify areas for improvement, remove redundant features carried over from the old paper process, and fix any bugs that arise. I was also one of the first developers at Polycon to work heavily with Power Apps, so I served as somewhat of a guinea pig for learning the platform\’s limitations and quirks. I documented many of my findings so that future developers working on my application, or anyone else on the team building with Power Apps, would have a stronger starting point.

Ultimately, this project gave me the opportunity to challenge myself by running my own cross-functional meetings, working through major setbacks, and finding solutions when there was no obvious answer. It also taught me one of my most important lessons from the work term: project requirements and expectations should be clearly written, discussed, and understood before development begins.

    ''',


    '''
    The Special Shipment Form application was a strong learning opportunity on how the fast-paced manufacturing environment can sometimes come at a cost. This project was presented to me in late July on a Friday afternoon, one hour before my shift ended. I was told that it was a small, 20-year-old software system that needed to be modernized as soon as possible, as the old system was being shut down before the following Monday. However, when I was shown the old system, the process was much larger than expected and required new features I had not worked with before, such as file attachments, making it infeasible to complete in the remaining hour. I decided to stay a little later after work, but was eventually told to get it as far as I could and that my supervisor, AJ, would handle the rest over the weekend.

Luckily, the shutdown was postponed, which allowed me to continue the project over the following weeks, with the main emphasis still being on getting it out as quickly as possible. Once a minimum viable product was completed, I ran a meeting with one of the customer service managers, Saysouda, and an upper-level manager, Frank, who reviewed my work and gave the green light to roll out the new system.

Since the Special Shipment Form was widely used throughout the factory, I received plenty of feedback and process corrections shortly after the app was deployed. At first, I was overwhelmed by the sheer number of change requests from users, but once I compiled and grouped similar requests, I created a simplified roadmap for implementing the features so users could continue the process they were familiar with in a timely manner. However, many users initially felt that the upgraded app was a setback from the legacy software. This was largely caused by the fast rollout skipping over the vital requirements-gathering sessions with the people who actually used the system every day. Moreover, the meeting I conducted was with managers who did not use the process on a day-to-day basis and were mainly looking for general functionality.

Over the following weeks, I spoke face-to-face with users and gathered and implemented their feedback, which also allowed me to begin thinking of my own efficiencies to make their jobs easier. Some of these features included automatic form copying for repeated shipments, easy PDF downloads, a dynamic gallery for the parts being shipped with a duplicate button for faster use, navigation buttons for quicker access throughout the form, and automatically generated large-font shipment numbers on PDFs so truck drivers could easily read them while passing by.

Ultimately, this project demonstrated the importance of a customer-first approach when designing an application, as well as the dangers of rolling out incomplete software too quickly. It taught me that having a technically functional application does not necessarily mean it is a successful one if it does not reflect how users actually work. By speaking directly with users, organizing their feedback, and continuously improving the application after deployment, I gained a much stronger understanding of requirements gathering, iterative development, and the importance of designing software around the people who use it.

    ''',

    // '''
    // PROJECT / WORK PARAGRAPH 2.
    // ''',

    // '''
    // PROJECT / WORK PARAGRAPH 3.
    // ''',
  ],

  workProjectImages: [
    // CoopReportImage(
    //   path: 'assets/images/coop/project_1.jpg',
    //   caption: 'Image caption.',
    // ),
    CoopReportImage(
       path: 'assets/images/coop/VendorMenu.png',
       caption: 'Main Menu Screen of Vendor Request application.',
    ),
      CoopReportImage(
      path: 'assets/images/coop/NewVendorBlank.png',
      caption: 'New Vendor Screen of Vendor Request application.',
    ),
      CoopReportImage(
      path: 'assets/images/coop/ignition1.png',
      caption: 'Ignition MES Screen for Truck-Part-Pickup Scheduling.',
    ),
      CoopReportImage(
      path: 'assets/images/coop/getCsUser.png',
      caption: 'Power Automate Flow to get privileged application users from Azure Groups / AD.',
    ),
      CoopReportImage(
      path: 'assets/images/coop/SSRBlank1.png',
      caption: 'Snippet of Special Shipment Form Application Form.',
    ), 
    CoopReportImage(
      path: 'assets/images/coop/SaveSSR.png',
      caption: 'Power Automate flow for Updating Special Shipment Form Application.',
    ),
    // CoopReportImage(
    //   path: 'assets/images/coop/project_2.jpg',
    //   caption: 'Image caption.',
    // ),
  ],

  // ===========================================================================
  // WHAT I LEARNED / REFLECTION
  // ===========================================================================
  whatILearned: [
    // '''
    // REFLECTION PARAGRAPH 1.
    // ''',

    // '''
    // REFLECTION PARAGRAPH 2.
    // ''',
  ],

  learningImages: [
    // Optional supporting images.
  ],

  // ===========================================================================
  // CONCLUSION
  // ===========================================================================
  conclusion: [
    // '''
    // CONCLUSION PARAGRAPH.
    // ''',
    '''
My first co-op work term at Magna International – Polycon Industries was an important step in my development as a software developer. By taking ownership of projects such as the Vendor Request and Special Shipment Request (SSR) applications from requirements gathering through development, testing, deployment, and ongoing improvements, I strengthened my full-stack development, project management, independent problem-solving, and communication skills. Leading requirements sessions, project meetings, and demonstrations also gave me more confidence presenting my work to managers, department leaders, and end users.

These projects also taught me that software development does not end once an application is deployed. With the Vendor app, I saw how careful technical decisions could improve a system while significantly reducing its long-term cost, while the SSR app showed me the importance of gathering feedback directly from the people using the software every day. Processes change, requirements evolve, and software needs to adapt while remaining reliable and maintainable. Overall, this work term gave me a much better understanding of professional software development and strengthened my desire to continue taking on unfamiliar challenges, expanding my skills as a developer, and building software that provides real value to the people using it.

    ''',
  ],

  conclusionImages: [
    // Optional supporting images.
  ],

  // ===========================================================================
  // ACKNOWLEDGMENTS
  // ===========================================================================
  acknowledgments: [
    // '''
    // ACKNOWLEDGMENT PARAGRAPH.
    // ''',
    '''
    I would like to express my sincere gratitude to the incredible IT team at Polycon Industries for their guidance, generosity, and welcoming nature. From the beginning, I was welcomed with open arms by a genuinely down-to-earth group of people who wanted to see me learn, grow, and succeed.

I would especially like to thank AJ Tarczy for his mentorship and trust throughout my time at Polycon. He gave me the opportunity to take ownership of my own projects and meetings while encouraging my curiosity, desire to learn, and willingness to step outside my comfort zone. At the same time, AJ helped me stay aligned with project scopes and expectations while strengthening my understanding of computer science practices and professional industry standards.

Finally, I would like to acknowledge the friends and colleagues I met along the way. They made even the slower days in the office enjoyable and helped me build meaningful connections across both the IT team and the broader Polycon community. Thank you to Shakir Hosein, Will Fines, Tyler Mclean, John Slawek, Gary Arts, Samer Alhaddad, Alana Ferris, Anna Goodridge, Chris Deforest, Sinisa Andrasic, Aman Toora, Ben Cervoni, Simon Quan, and Todd Sloan for making my experience at Polycon one I will remember.

    ''',
  ],
);
