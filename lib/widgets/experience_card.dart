import 'package:flutter/material.dart';

import '../models/experience.dart';
import '../theme/app_theme.dart';

class ExperienceCard extends StatelessWidget {
  final Experience experience;
  final bool isLast;

  const ExperienceCard({
    super.key,
    required this.experience,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 36,
          child: Column(
            children: [
              Container(
                width: 14,
                height: 14,
                decoration: BoxDecoration(
                  color: AppColors.neonPurple,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.purple.withValues(alpha: .65),
                      blurRadius: 14,
                    ),
                  ],
                ),
              ),
              if (!isLast)
                Container(width: 2, height: 260, color: AppColors.border),
            ],
          ),
        ),
        const SizedBox(width: 18),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(bottom: 26),
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: AppColors.border),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  experience.period,
                  style: const TextStyle(
                    color: AppColors.neonPurple,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  experience.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 4),
                Text(
                  experience.organization,
                  style: const TextStyle(color: AppColors.textSecondary),
                ),
                const SizedBox(height: 16),
                Text(
                  experience.description,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                if (experience.imagePaths.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: experience.imagePaths.map((path) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: SizedBox(
                            width: 180,
                            height: 110,
                            child: Image.asset(
                              path,
                              fit: BoxFit.cover,
                              errorBuilder: (_, _, _) {
                                return Container(
                                  color: AppColors.surfaceLight,
                                  child: const Icon(
                                    Icons.image_outlined,
                                    color: AppColors.purple,
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                const SizedBox(height: 18),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: experience.tags.map((tag) {
                    return Chip(
                      label: Text(tag),
                      backgroundColor: AppColors.purple.withValues(alpha: .10),
                      side: BorderSide.none,
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
