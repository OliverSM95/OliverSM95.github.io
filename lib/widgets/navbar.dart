import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import '../utils/breakpoints.dart';

class Navbar extends StatelessWidget {
  final String currentRoute;

  const Navbar({super.key, required this.currentRoute});

  static const _items = [
    ('Home', '/'),
    ('Experience', '/experience'),
    ('Projects', '/projects'),
    ('UofG', '/uofg'),
  ];

  void _navigate(BuildContext context, String route) {
    if (route == currentRoute) {
      return;
    }

    Navigator.pushReplacementNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
        color: AppColors.background,
        border: Border(bottom: BorderSide(color: AppColors.border)),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Breakpoints.pagePadding(width),
            vertical: 18,
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: () => _navigate(context, '/'),
                child: const Text(
                  'OS',
                  style: TextStyle(
                    color: AppColors.neonPurple,
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 2,
                  ),
                ),
              ),
              const Spacer(),

              if (width >= Breakpoints.mobile)
                Row(
                  children: _items.map((item) {
                    return _NavButton(
                      label: item.$1,
                      selected: currentRoute == item.$2,
                      onPressed: () => _navigate(context, item.$2),
                    );
                  }).toList(),
                )
              else
                PopupMenuButton<String>(
                  icon: const Icon(Icons.menu, color: AppColors.textPrimary),
                  color: AppColors.surface,
                  onSelected: (route) => _navigate(context, route),
                  itemBuilder: (_) {
                    return _items.map((item) {
                      return PopupMenuItem(
                        value: item.$2,
                        child: Text(item.$1),
                      );
                    }).toList();
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onPressed;

  const _NavButton({
    required this.label,
    required this.selected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(
            color: selected ? AppColors.neonPurple : AppColors.textSecondary,
            fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
