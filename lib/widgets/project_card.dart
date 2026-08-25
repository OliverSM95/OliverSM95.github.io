import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/project.dart';
import '../theme/app_theme.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  Future<void> _open(String url) async {
    await launchUrl(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border),
        boxShadow: [
          BoxShadow(
            color: AppColors.purple.withValues(alpha: .08),
            blurRadius: 28,
            spreadRadius: 2,
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 190,
            width: double.infinity,
            child: Image.asset(
              project.imagePath,
              fit: BoxFit.cover,
              errorBuilder: (_, _, _) {
                return Container(
                  color: AppColors.surfaceLight,
                  child: const Center(
                    child: Icon(
                      Icons.image_outlined,
                      size: 48,
                      color: AppColors.purple,
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    project.title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    project.description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 18),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: project.technologies.map((tech) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.purple.withValues(alpha: .10),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          tech,
                          style: const TextStyle(
                            color: AppColors.neonPurple,
                            fontSize: 12,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  const Spacer(),
                  if (project.githubUrl != null || project.liveUrl != null)
                    Wrap(
                      spacing: 8,
                      children: [
                        if (project.githubUrl != null)
                          TextButton.icon(
                            onPressed: () => _open(project.githubUrl!),
                            icon: const Icon(Icons.code),
                            label: const Text('Source'),
                          ),
                        if (project.liveUrl != null)
                          TextButton.icon(
                            onPressed: () => _open(project.liveUrl!),
                            icon: const Icon(Icons.open_in_new),
                            label: const Text('View'),
                          ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
