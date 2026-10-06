import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import '../utils/constants.dart';

class AboutGallery extends StatelessWidget {
  const AboutGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final imageWidth = constraints.maxWidth >= 800
            ? (constraints.maxWidth - 24) / 3
            : constraints.maxWidth;

        return Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            for (final photo in AppConstants.aboutGallery)
              SizedBox(
                width: imageWidth,
                child: RepaintBoundary(
                  child: AspectRatio(
                    aspectRatio: photo.aspectRatio,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: ColoredBox(
                        color: AppColors.surfaceLight,
                        child: Image.asset(
                          photo.path,
                          fit: BoxFit.contain,
                          filterQuality: FilterQuality.low,
                          errorBuilder: (context, error, stackTrace) {
                            return const Center(
                              child: Icon(
                                Icons.photo_outlined,
                                color: AppColors.purple,
                                size: 40,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
