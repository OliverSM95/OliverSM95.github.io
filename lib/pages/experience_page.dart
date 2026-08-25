import 'package:flutter/material.dart';

import '../data/experiences.dart';
import '../models/experience.dart';
import '../theme/app_theme.dart';
import '../utils/breakpoints.dart';
import '../widgets/experience_card.dart';
import '../widgets/footer.dart';
import '../widgets/navbar.dart';

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

                        Text(
                          'Skills & Applications',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        const SizedBox(height: 30),

                        const Wrap(
                          spacing: 18,
                          runSpacing: 18,
                          children: [
                            _SkillPanel(
                              title: 'Work Projects',
                              text: 'Summary of major projects completed through employment or professional experience.',
                            ),
                            _SkillPanel(
                              title: 'Tech Stack',
                              text: 'Programming languages, frameworks, platforms, databases, and development tools.',
                            ),
                            _SkillPanel(
                              title: 'Skills / Applications',
                              text: 'Technical applications, software, transferable skills, and specialized abilities.',
                            ),
                          ],
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

class _SkillPanel extends StatelessWidget {
  final String title;
  final String text;

  const _SkillPanel({required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 12),
          Text(text, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}
