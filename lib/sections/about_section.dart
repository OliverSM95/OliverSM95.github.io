import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web/web.dart' as web;

import '../widgets/about_gallery.dart';
import '../widgets/resume_embed.dart';
import '../theme/app_theme.dart';
import '../utils/breakpoints.dart';
import '../utils/constants.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  Future<void> _openResume() async {
    final uri = Uri.parse(web.document.baseURI)
        .resolve(AppConstants.resumeWebPath);

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

              const AboutGallery(),

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

              const SizedBox(height: 70),
              Text('Resume', style: Theme.of(context).textTheme.headlineMedium),

              const SizedBox(height: 12),

              Text(
                'A detailed overview of my education, experience, projects, and technical skills.',
                style: Theme.of(context).textTheme.bodyLarge,
              ),

              const SizedBox(height: 28),

              const ResumeEmbed(),

              const SizedBox(height: 24),

              FilledButton.icon(
                onPressed: _openResume,
                icon: const Icon(Icons.open_in_new),
                label: const Text('Open Resume'),
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
