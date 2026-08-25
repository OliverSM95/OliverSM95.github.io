import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import '../utils/breakpoints.dart';
import '../utils/constants.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final mobile = width < Breakpoints.tablet;

    final text = Column(
      crossAxisAlignment: mobile
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        const Text(
          'WELCOME',
          style: TextStyle(
            color: AppColors.neonPurple,
            fontWeight: FontWeight.w700,
            letterSpacing: 4,
          ),
        ),
        const SizedBox(height: 18),
        Text(
          AppConstants.name,
          textAlign: mobile ? TextAlign.center : TextAlign.left,
          style: TextStyle(
            color: AppColors.textPrimary,
            fontSize: mobile ? 44 : 64,
            fontWeight: FontWeight.w800,
            height: 1,
          ),
        ),
        const SizedBox(height: 18),
        Text(
          'One-line role, focus, or personal statement.',
          textAlign: mobile ? TextAlign.center : TextAlign.left,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 620,
          child: Text(
            'Brief introduction describing who you are, what you work on, and what visitors can find throughout the portfolio.',
            textAlign: mobile ? TextAlign.center : TextAlign.left,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        const SizedBox(height: 28),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          alignment: mobile ? WrapAlignment.center : WrapAlignment.start,
          children: [
            FilledButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/projects'),
              child: const Text('View Projects'),
            ),
            OutlinedButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/experience'),
              child: const Text('Experience'),
            ),
          ],
        ),
      ],
    );

    final headshot = Container(
      width: mobile ? 240 : 330,
      height: mobile ? 240 : 330,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.neonPurple, width: 2),
        boxShadow: [
          BoxShadow(
            color: AppColors.purple.withValues(alpha: .35),
            blurRadius: 45,
            spreadRadius: 4,
          ),
        ],
      ),
      child: ClipOval(
        child: Image.asset(
          AppConstants.headshotPath,
          fit: BoxFit.cover,
          errorBuilder: (_, _, _) {
            return Container(
              color: AppColors.surfaceLight,
              child: const Icon(
                Icons.person,
                size: 100,
                color: AppColors.purple,
              ),
            );
          },
        ),
      ),
    );

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Breakpoints.pagePadding(width),
        vertical: mobile ? 70 : 110,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: Breakpoints.maxContentWidth,
          ),
          child: mobile
              ? Column(children: [headshot, const SizedBox(height: 50), text])
              : Row(
                  children: [
                    Expanded(child: text),
                    const SizedBox(width: 60),
                    headshot,
                  ],
                ),
        ),
      ),
    );
  }
}
