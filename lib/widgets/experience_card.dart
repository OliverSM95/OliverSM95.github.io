import 'package:flutter/material.dart';

import '../models/experience.dart';
import '../theme/app_theme.dart';
import '../utils/breakpoints.dart';

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
    final width = MediaQuery.of(context).size.width;
    final mobile = width < Breakpoints.mobile;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 34,
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
                Container(
                  width: 2,
                  height: mobile ? 650 : 500,
                  color: AppColors.border,
                ),
            ],
          ),
        ),

        const SizedBox(width: 18),

        Expanded(
          child: Container(
            margin: const EdgeInsets.only(bottom: 30),
            padding: EdgeInsets.all(mobile ? 20 : 28),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.border),
              boxShadow: [
                BoxShadow(
                  color: AppColors.purple.withValues(alpha: .05),
                  blurRadius: 25,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (mobile)
                  _ExperienceHeaderMobile(experience: experience)
                else
                  _ExperienceHeaderDesktop(experience: experience),

                if (experience.note != null) ...[
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.purple.withValues(alpha: .10),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.purple.withValues(alpha: .25),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.school_outlined,
                          color: AppColors.neonPurple,
                          size: 17,
                        ),
                        const SizedBox(width: 8),
                        Flexible(
                          child: Text(
                            experience.note!,
                            style: const TextStyle(
                              color: AppColors.neonPurple,
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],

                const SizedBox(height: 22),

                Text(
                  experience.description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),

                const SizedBox(height: 24),

                // Bullet-point highlights
                ...experience.highlights.map(
                  (highlight) => Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 7),
                          child: Icon(
                            Icons.circle,
                            size: 6,
                            color: AppColors.neonPurple,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            highlight,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Optional image gallery.
                // If imagePaths is empty, absolutely nothing is rendered.
                if (experience.imagePaths.isNotEmpty) ...[
                  const SizedBox(height: 24),

                  _ExperienceGallery(
                    images: experience.imagePaths,
                  ),

                  const SizedBox(height: 24),
                ],

                // Technology / skill tags
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: experience.tags.map((tag) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 11,
                        vertical: 7,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.purple.withValues(alpha: .09),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: AppColors.purple.withValues(alpha: .18),
                        ),
                      ),
                      child: Text(
                        tag,
                        style: const TextStyle(
                          color: AppColors.neonPurple,
                          fontSize: 12,
                        ),
                      ),
                    );
                  }).toList(),
                ),

                if (experience.detailsRoute != null) ...[
                  const SizedBox(height: 26),

                  OutlinedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        experience.detailsRoute!,
                      );
                    },
                    icon: const Icon(
                      Icons.article_outlined,
                    ),
                    label: Text(
                      experience.detailsLabel ?? 'View Details',
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _ExperienceHeaderDesktop extends StatelessWidget {
  final Experience experience;

  const _ExperienceHeaderDesktop({
    required this.experience,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _ExperienceLogo(experience: experience),

        const SizedBox(width: 20),

        Expanded(
          child: _ExperienceTitle(experience: experience),
        ),
      ],
    );
  }
}

class _ExperienceHeaderMobile extends StatelessWidget {
  final Experience experience;

  const _ExperienceHeaderMobile({
    required this.experience,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _ExperienceLogo(experience: experience),
        const SizedBox(height: 18),
        _ExperienceTitle(experience: experience),
      ],
    );
  }
}

class _ExperienceLogo extends StatelessWidget {
  final Experience experience;

  const _ExperienceLogo({
    required this.experience,
  });

  @override
  Widget build(BuildContext context) {
    if (experience.logoPath == null) {
      return const SizedBox.shrink();
    }

    return Container(
      width: 90,
      height: 90,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Image.asset(
        experience.logoPath!,
        fit: BoxFit.contain,
      ),
    );
  }
}

class _ExperienceTitle extends StatelessWidget {
  final Experience experience;

  const _ExperienceTitle({
    required this.experience,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const SizedBox(height: 6),
        Text(
          experience.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 4),
        Text(
          experience.organization,
          style: const TextStyle(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          experience.location,
          style: const TextStyle(
            color: AppColors.textSecondary,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}

class _ExperienceGallery extends StatelessWidget {
  final List<String> images;

  const _ExperienceGallery({
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) {
      return const SizedBox.shrink();
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        int columns = 1;

        if (width >= 900) {
          columns = 3;
        } else if (width >= 550) {
          columns = 2;
        }

        const spacing = 12.0;

        final imageWidth =
            (width - (spacing * (columns - 1))) / columns;

        return Wrap(
          spacing: spacing,
          runSpacing: spacing,
          children: images.map((imagePath) {
            return SizedBox(
              width: imageWidth,
              child: AspectRatio(
                aspectRatio: 16 / 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}