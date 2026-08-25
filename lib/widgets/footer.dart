import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme/app_theme.dart';
import '../utils/constants.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  Future<void> _open(String value) async {
    final uri = Uri.parse(value);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        border: Border(top: BorderSide(color: AppColors.border)),
      ),
      child: Column(
        children: [
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            children: [
              _SocialButton(
                icon: const FaIcon(FontAwesomeIcons.github),
                tooltip: 'GitHub',
                onPressed: () => _open(AppConstants.githubUrl),
              ),
              _SocialButton(
                icon: const FaIcon(FontAwesomeIcons.linkedin),
                tooltip: 'LinkedIn',
                onPressed: () => _open(AppConstants.linkedinUrl),
              ),
              _SocialButton(
                icon: const FaIcon(FontAwesomeIcons.envelope),
                tooltip: 'Email',
                onPressed: () => _open(AppConstants.emailUrl),
              ),
              _SocialButton(
                icon: const FaIcon(FontAwesomeIcons.instagram),
                tooltip: 'Instagram',
                onPressed: () => _open(AppConstants.instagramUrl),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            '© ${DateTime.now().year} ${AppConstants.name}',
            style: const TextStyle(
              color: AppColors.textSecondary,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}

class _SocialButton extends StatelessWidget {
  final Widget icon;
  final String tooltip;
  final VoidCallback onPressed;

  const _SocialButton({
    required this.icon,
    required this.tooltip,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: tooltip,
      onPressed: onPressed,
      icon: icon,
      color: AppColors.textSecondary,
      hoverColor: AppColors.purple.withValues(alpha: 0.15),
      highlightColor: AppColors.purple.withValues(alpha: 0.15),
    );
  }
}
