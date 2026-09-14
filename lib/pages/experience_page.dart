import 'package:flutter/material.dart';

import '../data/experiences.dart';
import '../models/experience.dart';
import '../theme/app_theme.dart';
import '../utils/breakpoints.dart';
import '../widgets/experience_card.dart';
import '../widgets/footer.dart';
import '../widgets/navbar.dart';

import '../data/technology_experiences.dart';
import '../models/technology_experience.dart';
import '../widgets/technology_card.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SelectionArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Navbar(currentRoute: '/experience'),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Breakpoints.pagePadding(width),
                  vertical: 80,
                ),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: Breakpoints.maxContentWidth,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'EXPERIENCE',
                          style: TextStyle(
                            color: AppColors.neonPurple,
                            letterSpacing: 3,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 14),
                        Text(
                          'Experience Timeline',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        const SizedBox(height: 14),
                        Text(
                          'Overview of professional, technical, leadership, volunteer, and other relevant experience.',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 60),

                        _ExperienceGroup(
                          title: 'Technical Experience',
                          experiences: technicalExperiences,
                        ),

                        const SizedBox(height: 60),

                        _ExperienceGroup(
                          title: 'Non-Technical Experience',
                          experiences: nonTechnicalExperiences,
                        ),

                        const SizedBox(height: 80),

                        const SizedBox(height: 80),

                        const Text(
                          'TOOLS & EXPERIENCE',
                          style: TextStyle(
                            color: AppColors.neonPurple,
                            letterSpacing: 3,
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        const SizedBox(height: 14),

                        Text(
                          'What I\'ve Worked With',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),

                        const SizedBox(height: 14),

                        Text(
                          'A closer look at the tools and platforms I have used professionally and the work I have done with each of them.',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),

                        const SizedBox(height: 50),

                        _TechnologyGroup(
                          title: 'Work Projects & Platforms',
                          technologies: technologyExperiences
                              .where(
                                (technology) =>
                                    technology.category ==
                                    TechnologyCategory.workProject,
                              )
                              .toList(),
                        ),

                        const SizedBox(height: 60),

                        _TechnologyGroup(
                          title: 'Development Stack',
                          technologies: technologyExperiences
                              .where(
                                (technology) =>
                                    technology.category ==
                                    TechnologyCategory.techStack,
                              )
                              .toList(),
                        ),

                        const SizedBox(height: 60),

                        _TechnologyGroup(
                          title: 'Tools & Applications',
                          technologies: technologyExperiences
                              .where(
                                (technology) =>
                                    technology.category ==
                                    TechnologyCategory.application,
                              )
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ExperienceGroup extends StatelessWidget {
  final String title;
  final List<Experience> experiences;

  const _ExperienceGroup({required this.title, required this.experiences});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 30),
        ...experiences.asMap().entries.map(
          (entry) => ExperienceCard(
            experience: entry.value,
            isLast: entry.key == experiences.length - 1,
          ),
        ),
      ],
    );
  }
}
class _TechnologyGroup extends StatelessWidget {
  final String title;
  final List<TechnologyExperience> technologies;

  const _TechnologyGroup({
    required this.title,
    required this.technologies,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),

        const SizedBox(height: 28),

        LayoutBuilder(
          builder: (context, constraints) {
            const spacing = 18.0;

            int columns = 1;

            if (constraints.maxWidth >= 1050) {
              columns = 3;
            } else if (constraints.maxWidth >= 700) {
              columns = 2;
            }

            final cardWidth =
                (constraints.maxWidth - (spacing * (columns - 1))) / columns;

            return Wrap(
              spacing: spacing,
              runSpacing: spacing,
              children: technologies.map((technology) {
                return SizedBox(
                  width: cardWidth,
                  child: TechnologyCard(
                    technology: technology,
                  ),
                );
              }).toList(),
            );
          },
        ),
      ],
    );
  }
}