import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme/app_theme.dart';
import '../utils/breakpoints.dart';
import '../utils/constants.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  Future<void> _openResume() async {
    final uri = Uri.base.resolve(AppConstants.resumeWebPath);

    await launchUrl(uri);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    const skills = [
      'Skill / Technology',
      'Skill / Application',
      'Skill / Tool',
      'Interest',
      'Interest',
      'Interest',
    ];

    return Container(
      width: double.infinity,
      color: AppColors.surface,
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
              const _SectionLabel('ABOUT ME'),
              const SizedBox(height: 14),
              Text(
                'Who I Am',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 24),
              Text(
                'Personal overview covering background, interests, goals, values, and the work or fields that motivate you.',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 40),

              LayoutBuilder(
                builder: (context, constraints) {
                  final galleryWidth = constraints.maxWidth >= 800
                      ? (constraints.maxWidth - 24) / 3
                      : constraints.maxWidth;

                  return Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: AppConstants.aboutGallery
                        .map(
                          (image) => SizedBox(
                            width: galleryWidth,
                            height: 220,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                image,
                                fit: BoxFit.cover,
                                errorBuilder: (_, _, _) {
                                  return Container(
                                    color: AppColors.surfaceLight,
                                    child: const Center(
                                      child: Icon(
                                        Icons.photo_outlined,
                                        color: AppColors.purple,
                                        size: 40,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  );
                },
              ),

              const SizedBox(height: 42),
              Text(
                'Skills & Interests',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 18),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: skills.map((skill) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 9,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: AppColors.purple.withValues(alpha: .45),
                      ),
                      color: AppColors.purple.withValues(alpha: .08),
                    ),
                    child: Text(skill),
                  );
                }).toList(),
              ),

              const SizedBox(height: 42),
              FilledButton.icon(
                onPressed: _openResume,
                icon: const Icon(Icons.description_outlined),
                label: const Text('View Resume'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  final String text;

  const _SectionLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: AppColors.neonPurple,
        fontWeight: FontWeight.w700,
        letterSpacing: 3,
        fontSize: 13,
      ),
    );
  }
}
