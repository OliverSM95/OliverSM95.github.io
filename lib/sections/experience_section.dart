import 'package:flutter/material.dart';

import '../data/experiences.dart';
import '../theme/app_theme.dart';
import '../utils/breakpoints.dart';
import '../widgets/experience_card.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final preview = [
      ...technicalExperiences,
      ...nonTechnicalExperiences,
    ].take(2).toList();

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Breakpoints.pagePadding(width),
        vertical: 90,
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
              const SizedBox(height: 12),
              Text(
                'Recent Experience',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 34),
              ...preview.asMap().entries.map((entry) {
                return ExperienceCard(
                  experience: entry.value,
                  isLast: entry.key == preview.length - 1,
                );
              }),
              TextButton.icon(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/experience'),
                label: const Text('View all experience'),
                icon: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
