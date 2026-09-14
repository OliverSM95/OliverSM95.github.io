import 'package:flutter/material.dart';

import '../models/technology_experience.dart';
import '../theme/app_theme.dart';

class TechnologyCard extends StatelessWidget {
  final TechnologyExperience technology;

  const TechnologyCard({
    super.key,
    required this.technology,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.border),
        boxShadow: [
          BoxShadow(
            color: AppColors.purple.withValues(alpha: .05),
            blurRadius: 24,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 58,
                height: 58,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(
                  technology.imagePath,
                  fit: BoxFit.contain,
                  errorBuilder: (_, _, _) {
                    return const Icon(
                      Icons.code,
                      color: AppColors.purple,
                    );
                  },
                ),
              ),

              const SizedBox(width: 16),

              Expanded(
                child: Text(
                  technology.name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ],
          ),

          const SizedBox(height: 18),

          Text(
            technology.description,
            style: Theme.of(context).textTheme.bodyMedium,
          ),

          const SizedBox(height: 18),

          Wrap(
            spacing: 7,
            runSpacing: 7,
            children: technology.tags.map((tag) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 9,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: AppColors.purple.withValues(alpha: .08),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  tag,
                  style: const TextStyle(
                    color: AppColors.neonPurple,
                    fontSize: 11,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}