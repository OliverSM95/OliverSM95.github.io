import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme/app_theme.dart';
import '../utils/constants.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  Future<void> _email() async {
    await launchUrl(Uri.parse(AppConstants.emailUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 110),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 900),
          padding: const EdgeInsets.all(44),
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: AppColors.purple.withValues(alpha: .35)),
            boxShadow: [
              BoxShadow(
                color: AppColors.purple.withValues(alpha: .12),
                blurRadius: 45,
              ),
            ],
          ),
          child: Column(
            children: [
              Text(
                'Get In Touch',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 16),
              Text(
                'Short contact statement or invitation to connect.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 26),
              FilledButton.icon(
                onPressed: _email,
                icon: const Icon(Icons.mail_outline),
                label: const Text('Contact Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
